import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/enum/recurring_type.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/features/account/domain/entities/account.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/use_case/category_use_case.dart';
import 'package:paisa/features/settings/domain/use_case/settings_use_case.dart';
import 'package:paisa/features/transaction/data/model/expense_model.dart';
import 'package:paisa/features/transaction/domain/entities/expense.dart';
import 'package:paisa/features/transaction/domain/use_case/expense_use_case.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

@injectable
class TransactionBloc extends Bloc<ExpenseEvent, TransactionState> {
  TransactionBloc(
    this.settingsUseCase, {
    required this.expenseUseCase,
    required this.accountUseCase,
    required this.addExpenseUseCase,
    required this.deleteExpenseUseCase,
    required this.updateExpensesUseCase,
    required this.accountsUseCase,
    required this.defaultCategoriesUseCase,
  }) : super(ExpenseInitial()) {
    on<ExpenseEvent>((event, emit) {});
    on<AddOrUpdateExpenseEvent>(_addExpense);
    on<ClearExpenseEvent>(_deleteExpense);
    on<ChangeTransactionTypeEvent>(_changeExpense);
    on<FindTransactionFromIdEvent>(_fetchExpenseFromId);
    on<ChangeCategoryEvent>(_changeCategory);
    on<ChangeAccountEvent>(_changeAccount);
    on<UpdateDateTimeEvent>(_updateDateTime);
    on<TransferAccountEvent>(_transferAccount);
    on<FetchDefaultCategoryEvent>(_fetchDefaultCategories);
  }

  final GetAccountUseCase accountUseCase;
  final GetAccountsUseCase accountsUseCase;
  final AddExpenseUseCase addExpenseUseCase;
  String? currentDescription;
  Transaction? currentExpense;
  final GetDefaultCategoriesUseCase defaultCategoriesUseCase;
  final DeleteExpenseUseCase deleteExpenseUseCase;
  double? expenseAmount;
  String? expenseName;
  final GetExpenseUseCase expenseUseCase;
  RecurringType recurringType = RecurringType.daily;
  int? selectedAccountId;
  int? selectedCategoryId;
  DateTime selectedDate = DateTime.now();
  final SettingsUseCase settingsUseCase;
  TimeOfDay timeOfDay = TimeOfDay.now();
  AccountEntity? fromAccount, toAccount;
  TransactionType transactionType = TransactionType.expense;
  double? transferAmount;
  final UpdateExpensesUseCase updateExpensesUseCase;

  Future<void> _fetchExpenseFromId(
    FindTransactionFromIdEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final int? expenseId = int.tryParse(event.expenseId ?? '');
    if (expenseId == null) {
      selectedAccountId = settingsUseCase.get(defaultAccountIdKey);
      return;
    }

    final Transaction? expense = await expenseUseCase(expenseId);
    if (expense != null) {
      expenseAmount = expense.currency;
      expenseName = expense.name;
      selectedCategoryId = expense.categoryId;
      selectedAccountId = expense.accountId;
      selectedDate = expense.time;
      timeOfDay = TimeOfDay.fromDateTime(expense.time);
      transactionType = expense.type ?? TransactionType.expense;
      currentDescription = expense.description;
      currentExpense = expense;
      emit(TransactionFoundState(expense));
      Future.delayed(Duration.zero)
          .then((value) => add(ChangeTransactionTypeEvent(transactionType)));
    } else {
      emit(const TransactionErrorState('Expense not found!'));
    }
  }

  Future<void> _addExpense(
    AddOrUpdateExpenseEvent event,
    Emitter<TransactionState> emit,
  ) async {
    if (transactionType == TransactionType.transfer) {
      if ((fromAccount == null || toAccount == null) ||
          (fromAccount == toAccount)) {
        return emit(
          const TransactionErrorState('Select both from and to accounts'),
        );
      }
      final double? validAmount = transferAmount;
      final int? categoryId = selectedCategoryId;
      if (validAmount == null || validAmount == 0.0) {
        return emit(const TransactionErrorState('Enter valid amount'));
      }
      if (categoryId == null) {
        return emit(const TransactionErrorState('Select category'));
      }
      await addExpenseUseCase(
        name:
            'Transfer from ${fromAccount!.bankName} to ${toAccount!.bankName}',
        amount: validAmount,
        time: selectedDate,
        categoryId: categoryId,
        accountId: fromAccount!.superId!,
        transactionType: TransactionType.expense,
        description: '',
      );

      await addExpenseUseCase(
        name:
            'Received from ${fromAccount?.bankName} to ${toAccount?.bankName}',
        amount: validAmount,
        time: selectedDate,
        categoryId: categoryId,
        accountId: toAccount!.superId!,
        transactionType: TransactionType.income,
        description: '',
      );

      emit(const TransactionAdded(isAddOrUpdate: true));
    } else {
      final double? validAmount = expenseAmount;
      final String? name = expenseName;
      final int? categoryId = selectedCategoryId;
      final int? accountId = selectedAccountId;
      final DateTime dateTime = selectedDate;
      final String? description = currentDescription;

      if (name == null) {
        return emit(const TransactionErrorState('Enter expense name'));
      }
      if (validAmount == null || validAmount == 0.0) {
        return emit(const TransactionErrorState('Enter valid amount'));
      }

      if (accountId == null) {
        return emit(const TransactionErrorState('Select account'));
      }
      if (categoryId == null) {
        return emit(const TransactionErrorState('Select category'));
      }

      if (event.isAdding) {
        await addExpenseUseCase(
          name: name,
          amount: validAmount,
          time: dateTime,
          categoryId: categoryId,
          accountId: accountId,
          transactionType: transactionType,
          description: description,
        );
      } else {
        if (currentExpense == null) return;
        currentExpense!
          ..accountId = accountId
          ..categoryId = categoryId
          ..currency = validAmount
          ..name = name
          ..time = dateTime
          ..type = transactionType
          ..description = description;
        await updateExpensesUseCase(currentExpense!);
      }
      emit(TransactionAdded(isAddOrUpdate: event.isAdding));
    }
  }

  Future<void> _deleteExpense(
    ClearExpenseEvent event,
    Emitter<TransactionState> emit,
  ) async {
    await deleteExpenseUseCase(int.parse(event.expenseId));
    emit(TransactionDeletedState());
  }

  void _changeExpense(
    ChangeTransactionTypeEvent event,
    Emitter<TransactionState> emit,
  ) {
    final List<AccountEntity> accounts = accountsUseCase();
    if (accounts.isEmpty &&
        accounts.length <= 1 &&
        event.transactionType == TransactionType.transfer) {
      emit(const TransactionErrorState('Need two or more accounts '));
    } else {
      transactionType = event.transactionType;
      emit(ChangeTransactionTypeState(event.transactionType));
    }
  }

  FutureOr<void> _changeCategory(
    ChangeCategoryEvent event,
    Emitter<TransactionState> emit,
  ) {
    selectedCategoryId = event.category.superId;
    emit(ChangeCategoryState(event.category));
  }

  FutureOr<void> _changeAccount(
    ChangeAccountEvent event,
    Emitter<TransactionState> emit,
  ) {
    selectedAccountId = event.account.superId;
    emit(ChangeAccountState(event.account));
  }

  FutureOr<void> _updateDateTime(
    UpdateDateTimeEvent event,
    Emitter<TransactionState> emit,
  ) {
    selectedDate = event.dateTime;
    emit(UpdateDateTimeState(event.dateTime));
  }

  FutureOr<void> _transferAccount(
    TransferAccountEvent event,
    Emitter<TransactionState> emit,
  ) {
    if (event.isFromAccount) {
      fromAccount = event.account;
    } else {
      toAccount = event.account;
    }
    emit(TransferAccountState(
      event.isFromAccount,
      fromAccount,
      toAccount,
    ));
  }

  FutureOr<void> _fetchDefaultCategories(
    FetchDefaultCategoryEvent event,
    Emitter<TransactionState> emit,
  ) {
    final List<CategoryEntity> categories = defaultCategoriesUseCase();
    emit(DefaultCategoriesState(categories));
  }
}
