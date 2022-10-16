import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../common/widgets/paisa_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../common/enum/transaction.dart';
import '../../../common/constants/extensions.dart';
import '../../../di/service_locator.dart';
import '../bloc/expense_bloc.dart';
import '../widgets/select_account_widget.dart';
import '../widgets/select_category_widget.dart';
import '../widgets/toggle_buttons_widget.dart';

final GlobalKey<FormState> _form = GlobalKey<FormState>();

String formattedDate(DateTime? date) {
  if (date == null) {
    return '';
  }
  return DateFormat('dd/MM/yyyy').format(date);
}

class ExpensePage extends StatefulWidget {
  const ExpensePage({
    Key? key,
    this.expenseId,
  }) : super(key: key);

  final String? expenseId;

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  late final ExpenseBloc expenseBloc = locator.get<ExpenseBloc>()
    ..add(FetchExpenseFromIdEvent(widget.expenseId));
  late TextEditingController nameController = TextEditingController();
  late TextEditingController amountController = TextEditingController();
  late TextEditingController dateTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => expenseBloc,
      child: BlocConsumer(
        bloc: expenseBloc,
        listener: (context, state) {
          if (state is ExpenseDeletedState) {
            context.showMaterialSnackBar(
              expenseBloc.selectedType == TransactionType.expense
                  ? AppLocalizations.of(context)!.expenseDeletedSuccessfulLabel
                  : AppLocalizations.of(context)!.incomeDeletedSuccessfulLabel,
              backgroundColor: Theme.of(context).colorScheme.error,
              color: Theme.of(context).colorScheme.onError,
            );
            context.pop();
          } else if (state is ExpenseAdded) {
            final content = expenseBloc.selectedType == TransactionType.expense
                ? state.isAddOrUpdate
                    ? AppLocalizations.of(context)!.expenseAddedSuccessfulLabel
                    : AppLocalizations.of(context)!.expenseUpdateSuccessfulLabel
                : state.isAddOrUpdate
                    ? AppLocalizations.of(context)!.incomeAddedSuccessfulLabel
                    : AppLocalizations.of(context)!.incomeUpdateSuccessfulLabel;

            context.showMaterialSnackBar(
              content,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            );
            context.pop();
          } else if (state is ExpenseErrorState) {
            context.showMaterialSnackBar(
              state.errorString,
              backgroundColor: Theme.of(context).colorScheme.errorContainer,
              color: Theme.of(context).colorScheme.onErrorContainer,
            );
          } else if (state is ExpenseSuccessState) {
            dateTextController.text = formattedDate(expenseBloc.selectedDate);
            nameController.text = state.expense.name;
            nameController.selection = TextSelection.collapsed(
              offset: state.expense.name.length,
            );

            amountController.text = state.expense.currency.toString();
            amountController.selection = TextSelection.collapsed(
              offset: state.expense.currency.toString().length,
            );
          }
        },
        builder: (context, state) {
          return ScreenTypeLayout(
            mobile: Scaffold(
              appBar: context.materialYouAppBar(
                isAddExpense
                    ? AppLocalizations.of(context)!.addExpenseLabel
                    : AppLocalizations.of(context)!.updateExpenseLabel,
                actions: [
                  isAddExpense
                      ? const SizedBox.shrink()
                      : IconButton(
                          onPressed: () => expenseBloc
                              .add(ClearExpenseEvent(widget.expenseId!)),
                          icon: Icon(
                            Icons.delete_rounded,
                            color: Theme.of(context).colorScheme.error,
                          ),
                        )
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TransactionToggleButtons(
                      onSelected: (type) {
                        expenseBloc.selectedType = type;
                        expenseBloc.add(ChangeExpenseEvent(type));
                      },
                      selectedType: expenseBloc.selectedType,
                    ),
                    SelectCategoryIcon(
                      onSelected: (category) {
                        expenseBloc.selectedCategoryId = category.key;
                      },
                    ),
                    SelectedAccount(
                      accountId: expenseBloc.selectedAccountId ?? -1,
                      onSelected: (account) {
                        expenseBloc.selectedAccountId = account.key;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Form(
                        key: _form,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ExpenseNameWidget(controller: nameController),
                            const SizedBox(height: 16),
                            ExpenseAmountWidget(controller: amountController),
                            const SizedBox(height: 16),
                            ExpenseDatePickerWidget(
                              controller: dateTextController,
                              selectedDate: expenseBloc.selectedDate,
                              onSelectedDate: (date) {
                                expenseBloc.selectedDate = date;
                              },
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: _addButton(),
                ),
              ),
            ),
            tablet: Scaffold(
              appBar: AppBar(
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  systemNavigationBarColor: Colors.transparent,
                  statusBarIconBrightness:
                      MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Brightness.light
                          : Brightness.dark,
                ),
                iconTheme: IconThemeData(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Text(
                  isAddExpense
                      ? AppLocalizations.of(context)!.addExpenseLabel
                      : AppLocalizations.of(context)!.updateExpenseLabel,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                actions: [
                  TransactionToggleButtons(
                    onSelected: (type) {
                      expenseBloc.selectedType = type;
                      expenseBloc.add(ChangeExpenseEvent(type));
                    },
                    selectedType: expenseBloc.selectedType,
                  ),
                  isAddExpense
                      ? const SizedBox.shrink()
                      : IconButton(
                          onPressed: () {
                            expenseBloc
                                .add(ClearExpenseEvent(widget.expenseId!));
                          },
                          icon: Icon(
                            Icons.delete_rounded,
                            color: Theme.of(context).colorScheme.error,
                          ),
                        )
                ],
              ),
              body: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SelectCategoryIcon(
                            onSelected: (category) {
                              expenseBloc.selectedCategoryId = category.key;
                            },
                          ),
                          const SizedBox(height: 24),
                          SelectedAccount(
                            accountId: expenseBloc.selectedAccountId ?? -1,
                            onSelected: (account) {
                              expenseBloc.selectedAccountId = account.key;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Form(
                      key: _form,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ExpenseNameWidget(controller: nameController),
                            const SizedBox(height: 16),
                            ExpenseAmountWidget(controller: amountController),
                            const SizedBox(height: 16),
                            ExpenseDatePickerWidget(
                              controller: dateTextController,
                              selectedDate: expenseBloc.selectedDate,
                              onSelectedDate: (date) {
                                expenseBloc.selectedDate = date;
                              },
                            ),
                            const SizedBox(height: 16),
                            _addButton(),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _addButton() {
    return ElevatedButton(
      onPressed: addExpense,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      child: Text(
        isAddExpense
            ? AppLocalizations.of(context)!.addLabel
            : AppLocalizations.of(context)!.updateLabel,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: Theme.of(context).textTheme.headline6?.fontSize,
        ),
      ),
    );
  }

  bool get isAddExpense => widget.expenseId == null;

  void addExpense() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }

    if (isAddExpense) {
      expenseBloc.add(AddExpenseEvent());
    } else {
      expenseBloc.add(UpdateExpenseEvent());
    }
  }
}

class ExpenseDatePickerWidget extends StatelessWidget {
  const ExpenseDatePickerWidget({
    super.key,
    required this.controller,
    required this.selectedDate,
    required this.onSelectedDate,
  });

  final TextEditingController controller;
  final DateTime? selectedDate;
  final Function(DateTime) onSelectedDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PaisaTextFormField(
            enabled: false,
            controller: controller,
            keyboardType: TextInputType.number,
            hintText: 'Select date',
          ),
        ),
        IconButton(
          onPressed: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: selectedDate ?? DateTime.now(),
              firstDate: DateTime(1950),
              lastDate: DateTime.now(),
            );
            if (date != null) {
              final dateString = formattedDate(date);
              controller.text = dateString;
              onSelectedDate.call(date);
            }
          },
          icon: const Icon(Icons.today_rounded),
        )
      ],
    );
  }
}

class ExpenseNameWidget extends StatelessWidget {
  const ExpenseNameWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<ExpenseBloc>(context),
      buildWhen: (oldState, newState) => newState is ChangeExpenseState,
      builder: (context, state) {
        if (state is ChangeExpenseState) {
          return PaisaTextFormField(
            maxLines: 1,
            controller: controller,
            hintText: state.transactionType.hintName(context),
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value!.length >= 3) {
                return null;
              } else {
                return AppLocalizations.of(context)!.validNameLabel;
              }
            },
            onChanged: (value) =>
                BlocProvider.of<ExpenseBloc>(context).expenseName = value,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

class ExpenseAmountWidget extends StatelessWidget {
  const ExpenseAmountWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PaisaTextFormField(
      controller: controller,
      hintText: AppLocalizations.of(context)!.amountLabel,
      keyboardType: TextInputType.number,
      maxLength: 13,
      maxLines: 1,
      onChanged: (value) {
        double? amount = double.tryParse(value);
        BlocProvider.of<ExpenseBloc>(context).expenseAmount = amount;
      },
      validator: (value) {
        if (value!.length > 1) {
          return null;
        } else {
          return AppLocalizations.of(context)!.validAmountLabel;
        }
      },
    );
  }
}
