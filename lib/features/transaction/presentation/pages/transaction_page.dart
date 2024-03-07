import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/common.dart';
import '../../../../core/enum/transaction_type.dart';
import '../../../../core/widgets/paisa_widget.dart';
import '../bloc/transaction_bloc.dart';
import '../widgets/expense_and_income_widget.dart';
import '../widgets/select_account_widget.dart';
import '../widgets/select_category_widget.dart';
import '../widgets/transaction_amount_widget.dart';
import '../widgets/transaction_date_picker_widget.dart';
import '../widgets/transaction_delete_widget.dart';
import '../widgets/transaction_description_widget.dart';
import '../widgets/transaction_name_widget.dart';
import '../widgets/transaction_toggle_buttons_widget.dart';
import '../widgets/transfer_widget.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({
    Key? key,
    this.expenseId,
    this.transactionType,
    this.accountId,
    this.categoryId,
  }) : super(key: key);

  final String? accountId;
  final String? categoryId;
  final String? expenseId;
  final TransactionType? transactionType;

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  late final bool isAddExpense = widget.expenseId == null;
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    amountController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<TransactionBloc>(context)
      ..add(TransactionEvent.changeTransactionType(
          widget.transactionType ?? TransactionType.expense))
      ..add(TransactionEvent.findTransaction(widget.expenseId));
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: Colors.transparent,
      child: BlocConsumer<TransactionBloc, TransactionState>(
        listener: (context, state) {
          print(state);
          if (state is TransactionDeletedState) {
            context.showMaterialSnackBar(
              context.loc.deletedTransaction,
              backgroundColor: context.error,
              color: context.onError,
            );
            context.pop();
          } else if (state is TransactionAdded) {
            final content = state.isAddOrUpdate
                ? context.loc.addedTransaction
                : context.loc.updatedTransaction;
            context.showMaterialSnackBar(
              content,
              backgroundColor: context.primaryContainer,
              color: context.onPrimaryContainer,
            );
            context.pop();
          } else if (state is TransactionErrorState) {
            context.showMaterialSnackBar(
              state.errorString,
              backgroundColor: context.errorContainer,
              color: context.onErrorContainer,
            );
          } else if (state is TransactionFoundState) {
            nameController.text = state.transaction.name ?? '';
            nameController.selection = TextSelection.collapsed(
              offset: state.transaction.name?.length ?? 0,
            );
            amountController.text = state.transaction.currency.toString();
            amountController.selection = TextSelection.collapsed(
              offset: state.transaction.currency.toString().length,
            );
            descriptionController.text = state.transaction.description ?? '';
            descriptionController.selection = TextSelection.collapsed(
              offset: state.transaction.description?.length ?? 0,
            );
          }
        },
        builder: (context, state) {
          if (widget.accountId != null) {
            BlocProvider.of<TransactionBloc>(context).selectedAccountId =
                int.tryParse(widget.accountId!);
          }
          if (widget.categoryId != null) {
            BlocProvider.of<TransactionBloc>(context).selectedCategoryId =
                int.tryParse(widget.categoryId!);
          }
          return ScreenTypeLayout.builder(
            mobile: (p0) => Scaffold(
              extendBody: true,
              appBar: AppBar(
                title: Text(
                  isAddExpense
                      ? context.loc.addTransaction
                      : context.loc.updateTransaction,
                  style:
                      context.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TransactionToggleButtons(),
                  ),
                ),
                actions: [
                  TransactionDeleteWidget(expenseId: widget.expenseId),
                ],
              ),
              body: BlocBuilder<TransactionBloc, TransactionState>(
                buildWhen: (previous, current) =>
                    current is ChangeTransactionTypeState,
                builder: (context, state) {
                  if (state is ChangeTransactionTypeState) {
                    if (state.transactionType == TransactionType.transfer) {
                      return TransferWidget(controller: amountController);
                    } else {
                      return ExpenseIncomeWidget(
                        amountController: amountController,
                        descriptionController: descriptionController,
                        nameController: nameController,
                      );
                    }
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: PaisaBigButton(
                    onPressed: () {
                      BlocProvider.of<TransactionBloc>(context)
                          .add(TransactionEvent.addOrUpdate(isAddExpense));
                    },
                    title: isAddExpense ? context.loc.add : context.loc.update,
                  ),
                ),
              ),
            ),
            tablet: (p0) => Scaffold(
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
                  color: context.onSurface,
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Text(
                  isAddExpense
                      ? context.loc.addTransaction
                      : context.loc.updateTransaction,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                actions: [
                  TransactionDeleteWidget(expenseId: widget.expenseId),
                  PaisaButton(
                    onPressed: () {
                      BlocProvider.of<TransactionBloc>(context)
                          .add(TransactionEvent.addOrUpdate(isAddExpense));
                    },
                    title: isAddExpense ? context.loc.add : context.loc.update,
                  ),
                  const SizedBox(width: 16),
                ],
              ),
              body: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const TransactionToggleButtons(),
                            const SizedBox(height: 16),
                            TransactionNameWidget(controller: nameController),
                            const SizedBox(height: 16),
                            ExpenseDescriptionWidget(
                                controller: descriptionController),
                            const SizedBox(height: 16),
                            TransactionAmountWidget(
                                controller: amountController),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: ExpenseDatePickerWidget(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        SelectedAccount(),
                        SelectCategoryIcon(),
                      ],
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
}
