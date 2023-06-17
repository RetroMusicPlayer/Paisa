import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../main.dart';
import '../../../../core/common.dart';
import '../../../../data/debt/models/transactions_model.dart';
import '../../../../domain/debt/entities/transaction.dart';
import '../../../widgets/paisa_annotate_region_widget.dart';
import '../../../widgets/paisa_big_button_widget.dart';
import '../../../widgets/paisa_bottom_sheet.dart';
import '../../../widgets/paisa_text_field.dart';
import '../../cubit/debts_bloc.dart';
import '../../widgets/debt_toggle_buttons_widget.dart';

class AddOrEditDebtPage extends StatefulWidget {
  const AddOrEditDebtPage({
    super.key,
    this.debtId,
  });
  final String? debtId;

  @override
  State<AddOrEditDebtPage> createState() => _AddOrEditDebtPageState();
}

class _AddOrEditDebtPageState extends State<AddOrEditDebtPage> {
  late final bool isDebtAddOrUpdate = widget.debtId == null;
  final DebtsBloc debtBloc = getIt.get();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final amountController = TextEditingController();
  final nameController = TextEditingController();
  final descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    debtBloc.add(FetchDebtOrCreditFromIdEvent(widget.debtId));
  }

  @override
  void dispose() {
    amountController.dispose();
    nameController.dispose();
    descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: Theme.of(context).colorScheme.background,
      child: BlocProvider(
        create: (_) => debtBloc,
        child: BlocConsumer(
          bloc: debtBloc,
          listener: (context, state) {
            if (state is DebtsAdded) {
              GoRouter.of(context).pop();
            } else if (state is DebtsSuccessState) {
              amountController.text = state.debt.amount.toString();
              amountController.selection = TextSelection.collapsed(
                offset: state.debt.amount.toString().length,
              );

              nameController.text = state.debt.name.toString();
              nameController.selection = TextSelection.collapsed(
                offset: state.debt.name.toString().length,
              );

              descController.text = state.debt.description.toString();
              descController.selection = TextSelection.collapsed(
                offset: state.debt.description.toString().length,
              );
            } else if (state is DebtErrorState) {
              context.showMaterialSnackBar(
                state.errorString,
                backgroundColor: Theme.of(context).colorScheme.errorContainer,
                color: Theme.of(context).colorScheme.onErrorContainer,
              );
            } else if (state is DeleteDebtsState) {
              context.pop();
            }
          },
          builder: (context, state) {
            return Scaffold(
              appBar: context.materialYouAppBar(
                context.loc.addDebt,
                actions: [
                  isDebtAddOrUpdate
                      ? const SizedBox.shrink()
                      : IconButton(
                          onPressed: () => paisaAlertDialog(
                            context,
                            title: Text(context.loc.dialogDeleteTitle),
                            child: RichText(
                              text: TextSpan(
                                text: context.loc.deleteDebtOrCredit,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            confirmationButton: TextButton(
                              style: TextButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                              ),
                              onPressed: () {
                                debtBloc.add(DeleteDebtEvent(
                                    int.tryParse(widget.debtId!) ?? 0));
                              },
                              child: const Text('Delete'),
                            ),
                          ).then((value) => context.pop()),
                          icon: Icon(
                            Icons.delete_rounded,
                            color: Theme.of(context).colorScheme.error,
                          ),
                        )
                ],
              ),
              body: Form(
                key: _formKey,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          DebtToggleButtonsWidget(debtsBloc: debtBloc),
                          const SizedBox(height: 16),
                          AmountWidget(controller: amountController),
                          const SizedBox(height: 16),
                          NameWidget(controller: nameController),
                          const SizedBox(height: 16),
                          DescriptionWidget(controller: descController),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    const StartAndEndDateWidget(),
                    ListTile(
                      title: Text(
                        context.loc.transactionHistory,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ValueListenableBuilder<Box<TransactionsModel>>(
                      valueListenable:
                          getIt.get<Box<TransactionsModel>>().listenable(),
                      builder: (context, value, child) {
                        final int? parentId = int.tryParse(widget.debtId ?? '');
                        if (parentId == null) return const SizedBox.shrink();
                        final List<Transaction> transactions =
                            value.getTransactionsFromId(parentId);

                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: transactions.length,
                          itemBuilder: (_, index) {
                            final Transaction transaction = transactions[index];
                            return ListTile(
                              leading: IconButton(
                                onPressed: () {
                                  debtBloc.add(
                                    DeleteTransactionEvent(
                                        transaction.superId!),
                                  );
                                },
                                icon: const Icon(Icons.delete),
                              ),
                              title: Text(transaction.now.formattedDate),
                              trailing:
                                  Text(transaction.amount.toFormateCurrency()),
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: PaisaBigButton(
                    onPressed: () {
                      final isValid = _formKey.currentState!.validate();
                      if (!isValid) {
                        return;
                      }
                      debtBloc.add(AddOrUpdateEvent(isDebtAddOrUpdate));
                    },
                    title: isDebtAddOrUpdate
                        ? context.loc.add
                        : context.loc.update,
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

class StartAndEndDateWidget extends StatelessWidget {
  const StartAndEndDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final debtBloc = BlocProvider.of<DebtsBloc>(context);
    return Row(
      children: [
        BlocBuilder(
          bloc: debtBloc,
          buildWhen: (previous, current) => current is SelectedStartDateState,
          builder: (context, state) {
            if (state is SelectedStartDateState) {
              return Expanded(
                child: DatePickerWidget(
                  onSelected: (date) {
                    debtBloc.add(SelectedStartDateEvent(date));
                  },
                  title: context.loc.startDate,
                  subtitle: state.startDateTime.formattedDate,
                  icon: MdiIcons.calendarStart,
                  lastDate: DateTime.now(),
                  firstDate: DateTime(2000),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
        BlocBuilder(
          bloc: debtBloc,
          buildWhen: (previous, current) => current is SelectedEndDateState,
          builder: (context, state) {
            if (state is SelectedEndDateState) {
              return Expanded(
                child: DatePickerWidget(
                  onSelected: (date) {
                    debtBloc.add(SelectedEndDateEvent(date));
                  },
                  title: context.loc.dueDate,
                  subtitle: state.endDateTime.formattedDate,
                  icon: MdiIcons.calendarEnd,
                  lastDate: DateTime(2050),
                  firstDate: DateTime.now(),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }
}

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    super.key,
    required this.onSelected,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.lastDate,
    required this.firstDate,
  });
  final Function(DateTime) onSelected;
  final String title;
  final String subtitle;
  final IconData icon;
  final DateTime lastDate;
  final DateTime firstDate;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onTap: () async {
        final result = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: firstDate,
          lastDate: lastDate,
        );
        if (result == null) return;
        onSelected.call(result);
      },
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PaisaTextFormField(
      controller: controller,
      keyboardType: TextInputType.name,
      hintText: context.loc.nameHint,
      validator: (value) {
        if (value!.length >= 2) {
          return null;
        } else {
          return context.loc.validName;
        }
      },
      onChanged: (value) =>
          BlocProvider.of<DebtsBloc>(context).currentName = value,
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PaisaTextFormField(
      controller: controller,
      keyboardType: TextInputType.name,
      hintText: context.loc.description,
      validator: (value) {
        if (value!.length >= 3) {
          return null;
        } else {
          return context.loc.validDescription;
        }
      },
      onChanged: (value) =>
          BlocProvider.of<DebtsBloc>(context).currentDescription = value,
    );
  }
}

class AmountWidget extends StatelessWidget {
  const AmountWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PaisaTextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      hintText: context.loc.amount,
      onChanged: (value) {
        double? amount = double.tryParse(value);
        BlocProvider.of<DebtsBloc>(context).currentAmount = amount;
      },
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (_) {}
          return oldValue;
        }),
      ],
      validator: (value) {
        if (value!.isNotEmpty) {
          return null;
        } else {
          return context.loc.validAmount;
        }
      },
    );
  }
}
