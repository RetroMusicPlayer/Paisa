// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:paisa/config/routes.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/features/account/data/model/account_model.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/category/data/model/category_model.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/recurring/presentation/cubit/recurring_cubit.dart';
import 'package:paisa/features/transaction/presentation/widgets/selectable_item_widget.dart';
import 'package:paisa/main.dart';

class AddRecurringPage extends StatefulWidget {
  const AddRecurringPage({super.key});

  @override
  State<AddRecurringPage> createState() => _AddRecurringPageState();
}

class _AddRecurringPageState extends State<AddRecurringPage> {
  final amountController = TextEditingController();
  final descriptionController = TextEditingController();
  final nameController = TextEditingController();
  late final RecurringCubit recurringCubit = getIt<RecurringCubit>();

  @override
  void dispose() {
    nameController.dispose();
    amountController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: context.background,
      child: BlocProvider(
        create: (context) => recurringCubit,
        child: BlocConsumer(
          bloc: recurringCubit,
          listener: (context, state) {
            if (state is RecurringErrorState) {
              context.showMaterialSnackBar(
                state.error,
                backgroundColor: context.primaryContainer,
                color: context.onPrimaryContainer,
              );
            } else if (state is RecurringEventAddedState) {
              context.pop();
            }
          },
          builder: (context, state) {
            return ScreenTypeLayout.builder(
              mobile: (p0) => Scaffold(
                appBar: context.materialYouAppBar(
                  context.loc.recurring,
                ),
                body: ListView(
                  shrinkWrap: true,
                  children: [
                    const TransactionToggleButtons(),
                    const SizedBox(height: 16),
                    RecurringNameWidget(controller: nameController),
                    const SizedBox(height: 16),
                    RecurringAmountWidget(controller: amountController),
                    const SizedBox(height: 16),
                    const RecurringDatePickerWidget(),
                    const RecurringWidget(),
                    const SelectedAccount(),
                    const SelectCategory(),
                  ],
                ),
                bottomNavigationBar: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: PaisaBigButton(
                      onPressed: () {
                        recurringCubit.addRecurringEvent();
                      },
                      title: context.loc.add,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TransactionToggleButtons extends StatelessWidget {
  const TransactionToggleButtons({
    super.key,
  });

  void _update(BuildContext context, TransactionType type) {
    context.read<RecurringCubit>().changeTransactionType(type);
  }

  @override
  Widget build(BuildContext context) {
    final filters = [
      TransactionType.expense,
      TransactionType.income,
    ];
    return BlocBuilder<RecurringCubit, RecurringState>(
      buildWhen: (previous, current) => current is TransactionTypeState,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 56,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 6),
              itemCount: filters.length,
              itemBuilder: (context, index) {
                final TransactionType transactionType = filters[index];
                return PaisaPillChip(
                  title: transactionType.stringName(context),
                  isSelected: context.read<RecurringCubit>().transactionType ==
                      transactionType,
                  onPressed: () => _update(context, transactionType),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class SelectedAccount extends StatelessWidget {
  const SelectedAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<AccountModel>>(
      valueListenable: getIt<Box<AccountModel>>().listenable(),
      builder: (context, value, child) {
        final accounts = value.values.toEntities();
        if (accounts.isEmpty) {
          return ListTile(
            onTap: () {
              const AccountPageData().push(context);
            },
            title: Text(context.loc.addAccountEmptyTitle),
            subtitle: Text(context.loc.addAccountEmptySubTitle),
            trailing: const Icon(Icons.keyboard_arrow_right),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                context.loc.selectAccount,
                style: context.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AccountSelectedWidget(
              accounts: accounts,
              onSelected: (selectedId) {
                context.read<RecurringCubit>().selectedAccountId = selectedId;
              },
            )
          ],
        );
      },
    );
  }
}

class AccountSelectedWidget extends StatefulWidget {
  const AccountSelectedWidget({
    super.key,
    required this.accounts,
    required this.onSelected,
  });

  final List<AccountEntity> accounts;
  final Function(int selectedId) onSelected;

  @override
  State<AccountSelectedWidget> createState() => _AccountSelectedWidgetState();
}

class _AccountSelectedWidgetState extends State<AccountSelectedWidget> {
  int selectedId = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: widget.accounts.length + 1,
        itemBuilder: (_, index) {
          if (index == 0) {
            return ItemWidget(
              color: context.primary,
              selected: false,
              title: 'Add New',
              icon: MdiIcons.plus.codePoint,
              onPressed: () {
                const AccountPageData().push(context);
              },
            );
          } else {
            final AccountEntity account = widget.accounts[index - 1];
            return ItemWidget(
              color: Color(account.color),
              selected: account.superId == selectedId,
              title: account.name,
              icon: account.cardType.icon.codePoint,
              onPressed: () {
                setState(() {
                  selectedId = account.superId!;
                  widget.onSelected(selectedId);
                });
              },
              subtitle: account.bankName,
            );
          }
        },
      ),
    );
  }
}

class SelectCategory extends StatelessWidget {
  const SelectCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<CategoryModel>>(
      valueListenable: getIt<Box<CategoryModel>>().listenable(),
      builder: (context, value, child) {
        final List<CategoryEntity> categories = value.values.toEntities();
        if (categories.isEmpty) {
          return ListTile(
            onTap: () {
              const CategoryPageData().push(context);
            },
            title: Text(context.loc.addCategoryEmptyTitle),
            subtitle: Text(context.loc.addCategoryEmptySubTitle),
            trailing: const Icon(Icons.keyboard_arrow_right),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                context.loc.selectCategory,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            CategorySelectWidget(
              categories: categories,
              onSelected: (int selectedId) {
                context.read<RecurringCubit>().selectedCategoryId = selectedId;
              },
            )
          ],
        );
      },
    );
  }
}

class CategorySelectWidget extends StatefulWidget {
  const CategorySelectWidget({
    super.key,
    required this.categories,
    required this.onSelected,
  });

  final List<CategoryEntity> categories;
  final Function(int selectedId) onSelected;

  @override
  State<CategorySelectWidget> createState() => _CategorySelectWidgetState();
}

class _CategorySelectWidgetState extends State<CategorySelectWidget> {
  int selectedId = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 4.0,
        runSpacing: 8.0,
        children: List.generate(
          widget.categories.length + 1,
          (index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  onSelected: (value) {
                    const CategoryPageData().push(context);
                  },
                  avatar: Icon(
                    color: context.primary,
                    IconData(
                      MdiIcons.plus.codePoint,
                      fontFamily: fontFamilyName,
                      fontPackage: fontFamilyPackageName,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                    side: BorderSide(
                      color: context.primary,
                    ),
                  ),
                  showCheckmark: false,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  label: Text(
                    context.loc.addNew,
                    style: TextStyle(
                      color: context.primary,
                    ),
                  ),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: context.onSurfaceVariant),
                  padding: const EdgeInsets.all(12),
                ),
              );
            } else {
              final CategoryEntity category = widget.categories[index - 1];
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  selected: category.superId == selectedId,
                  onSelected: (value) {
                    setState(() {
                      selectedId = category.superId!;
                      widget.onSelected(selectedId);
                    });
                  },
                  avatar: Icon(
                    color: category.superId == selectedId
                        ? context.primary
                        : context.onSurfaceVariant,
                    IconData(
                      category.icon ?? 0,
                      fontFamily: fontFamilyName,
                      fontPackage: fontFamilyPackageName,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                    side: BorderSide(
                      color: context.primary,
                    ),
                  ),
                  showCheckmark: false,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  label: Text(category.name ?? ''),
                  labelStyle: context.titleMedium?.copyWith(
                      color: category.superId == selectedId
                          ? context.primary
                          : context.onSurfaceVariant),
                  padding: const EdgeInsets.all(12),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class RecurringNameWidget extends StatelessWidget {
  const RecurringNameWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: PaisaTextFormField(
        maxLines: 1,
        controller: controller,
        hintText: context.loc.recurring,
        keyboardType: TextInputType.name,
        inputFormatters: [
          FilteringTextInputFormatter.singleLineFormatter,
        ],
        validator: (value) {
          return value!.isNotEmpty ? null : context.loc.validName;
        },
        onChanged: (value) =>
            context.read<RecurringCubit>().recurringName = value,
      ),
    );
  }
}

class RecurringAmountWidget extends StatelessWidget {
  const RecurringAmountWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: PaisaTextFormField(
        controller: controller,
        hintText: context.loc.amount,
        keyboardType: TextInputType.number,
        maxLength: 13,
        maxLines: 1,
        counterText: '',
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
          TextInputFormatter.withFunction((oldValue, newValue) {
            try {
              final text = newValue.text;
              if (text.isNotEmpty) double.parse(text);
              return newValue;
            } catch (_) {}
            return oldValue;
          }),
        ],
        onChanged: (value) {
          double? amount = double.tryParse(value);
          context.read<RecurringCubit>().amount = amount;
        },
        validator: (value) {
          return value!.isNotEmpty ? null : context.loc.validAmount;
        },
      ),
    );
  }
}

class RecurringDatePickerWidget extends StatefulWidget {
  const RecurringDatePickerWidget({
    super.key,
  });

  @override
  State<RecurringDatePickerWidget> createState() =>
      _RecurringDatePickerWidgetState();
}

class _RecurringDatePickerWidgetState extends State<RecurringDatePickerWidget> {
  late final RecurringCubit recurringCubit = context.read<RecurringCubit>();

  late DateTime selectedDateTime = recurringCubit.selectedDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            horizontalTitleGap: 0,
            onTap: () async {
              final DateTime? dateTime = await showDatePicker(
                context: context,
                initialDate: selectedDateTime,
                firstDate: DateTime(1950),
                lastDate: DateTime.now(),
              );
              if (dateTime != null) {
                setState(() {
                  selectedDateTime = selectedDateTime.copyWith(
                    day: dateTime.day,
                    month: dateTime.month,
                    year: dateTime.year,
                  );
                  recurringCubit.selectedDate = selectedDateTime;
                });
              }
            },
            leading: Icon(
              Icons.today_rounded,
              color: context.secondary,
            ),
            title: Text(selectedDateTime.formattedDate),
          ),
        ),
        Expanded(
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            horizontalTitleGap: 0,
            onTap: () async {
              final TimeOfDay? timeOfDay = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dialOnly,
              );
              if (timeOfDay != null) {
                setState(() {
                  selectedDateTime = selectedDateTime.copyWith(
                    hour: timeOfDay.hour,
                    minute: timeOfDay.minute,
                  );
                  recurringCubit.selectedDate = selectedDateTime;
                });
              }
            },
            leading: Icon(
              MdiIcons.clockOutline,
              color: context.secondary,
            ),
            title: Text(selectedDateTime.formattedTime),
          ),
        ),
      ],
    );
  }
}

class RecurringWidget extends StatelessWidget {
  const RecurringWidget({
    super.key,
  });

  void _update(BuildContext context, RecurringType type) {
    context.read<RecurringCubit>().changeRecurringEvent(type);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecurringCubit, RecurringState>(
      buildWhen: (oldState, newState) => newState is RecurringTypeState,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Periodic',
                style: context.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 56,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 6),
                  itemCount: RecurringType.values.length,
                  itemBuilder: (context, index) {
                    final RecurringType type = RecurringType.values[index];
                    return PaisaPillChip(
                      title: type.name(context),
                      isSelected:
                          context.read<RecurringCubit>().recurringType == type,
                      onPressed: () => _update(context, type),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
