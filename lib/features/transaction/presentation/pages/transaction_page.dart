// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Project imports:
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/core/widgets/paisa_widget.dart';
import 'package:paisa/main.dart';
import 'package:paisa/features/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:paisa/features/transaction/presentation/widgets/expense_and_income_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/select_account_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/select_category_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/transaction_amount_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/transaction_date_picker_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/transaction_delete_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/transaction_description_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/transaction_name_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/transaction_toggle_buttons_widget.dart';
import 'package:paisa/features/transaction/presentation/widgets/transfer_widget.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({
    super.key,
    this.transactionId,
    this.transactionType,
    this.accountId,
    this.categoryId,
  });

  final int? accountId;
  final int? categoryId;
  final int? transactionId;
  final TransactionType? transactionType;

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TransactionBloc transactionBloc = getIt.get();
  late final bool isAddExpense = widget.transactionId == null;
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
    transactionBloc
      ..add(TransactionEvent.changeTransactionType(
        widget.transactionType ?? TransactionType.expense,
      ))
      ..add(TransactionEvent.findTransaction(widget.transactionId));
  }

  @override
  Widget build(BuildContext context) {
    return PaisaAnnotatedRegionWidget(
      color: Colors.transparent,
      child: BlocProvider(
        create: (context) => transactionBloc,
        child: BlocConsumer<TransactionBloc, TransactionState>(
          listener: (context, state) {
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
              nameController.text = state.transaction.name;
              nameController.selection = TextSelection.collapsed(
                offset: state.transaction.name.length,
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
              context.read<TransactionBloc>().selectedAccountId =
                  widget.accountId;
            }
            if (widget.categoryId != null) {
              context.read<TransactionBloc>().selectedCategoryId =
                  widget.categoryId;
            }

            return ScreenTypeLayout.builder(
              mobile: (p0) => Scaffold(
                extendBody: true,
                appBar: AppBar(
                  title: Text(
                    isAddExpense
                        ? context.loc.addTransaction
                        : context.loc.updateTransaction,
                    style: context.titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(32),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TransactionToggleButtons(),
                    ),
                  ),
                  actions: [
                    TransactionDeleteWidget(expenseId: widget.transactionId),
                  ],
                ),
                body: BlocBuilder<TransactionBloc, TransactionState>(
                  buildWhen: (previous, current) =>
                      current is ChangeTransactionTypeState,
                  builder: (context, state) {
                    return state is ChangeTransactionTypeState
                        ? state.transactionType == TransactionType.transfer
                            ? TransferWidget(controller: amountController)
                            : ExpenseIncomeWidget(
                                amountController: amountController,
                                descriptionController: descriptionController,
                                nameController: nameController,
                              )
                        : const SizedBox.shrink();
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
                      title:
                          isAddExpense ? context.loc.add : context.loc.update,
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
                        MediaQuery.platformBrightnessOf(context) ==
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
                    TransactionDeleteWidget(expenseId: widget.transactionId),
                    PaisaButton(
                      onPressed: () {
                        BlocProvider.of<TransactionBloc>(context)
                            .add(TransactionEvent.addOrUpdate(isAddExpense));
                      },
                      title:
                          isAddExpense ? context.loc.add : context.loc.update,
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
                                controller: descriptionController,
                              ),
                              const SizedBox(height: 16),
                              TransactionAmountWidget(
                                controller: amountController,
                              ),
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
      ),
    );
  }
}
