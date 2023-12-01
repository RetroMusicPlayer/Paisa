import 'dart:async';

import 'package:event_bus_plus/event_bus_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/recurring_type.dart';
import 'package:paisa/core/enum/transaction_type.dart';
import 'package:paisa/core/use_case/use_case.dart';
import 'package:paisa/features/account/domain/entities/account_entity.dart';
import 'package:paisa/features/account/domain/use_case/account_use_case.dart';
import 'package:paisa/features/category/domain/entities/category.dart';
import 'package:paisa/features/category/domain/use_case/category_use_case.dart';
import 'package:paisa/features/home/presentation/cubit/summary/summary_cubit.dart';
import 'package:paisa/features/settings/domain/use_case/settings_use_case.dart';
import 'package:paisa/features/transaction/domain/entities/transaction.dart';
import 'package:paisa/features/transaction/domain/use_case/transaction_use_case.dart';

part 'transaction_bloc.freezed.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc(
    this.settingsUseCase,
    this.eventBus, {
    required this.getTransactionUseCase,
    required this.accountUseCase,
    required this.addTransactionUseCase,
    required this.deleteTransactionUseCase,
    required this.updateTransactionUseCase,
    required this.accountsUseCase,
    required this.getDefaultCategoriesUseCase,
  }) : super(const TransactionState.initial()) {
    on<TransactionEvent>((event, emit) {});
    on<_AddOrUpdateExpenseEvent>(_addExpense);
    on<_ClearExpenseEvent>(_deleteExpense);
    on<_ChangeTransactionTypeEvent>(_changeExpense);
    on<_FindTransactionFromIdEvent>(_fetchExpenseFromId);
    on<_ChangeCategoryEvent>(_changeCategory);
    on<_ChangeAccountEvent>(_changeAccount);
    on<_UpdateDateTimeEvent>(_updateDateTime);
    on<_TransferAccountEvent>(_transferAccount);
    on<_FetchDefaultCategoryEvent>(_fetchDefaultCategories);
  }

  final GetAccountUseCase accountUseCase;
  final GetAccountsUseCase accountsUseCase;
  final AddTransactionUseCase addTransactionUseCase;
  String? currentDescription;
  TransactionEntity? currentExpense;
  final GetDefaultCategoriesUseCase getDefaultCategoriesUseCase;
  final DeleteTransactionUseCase deleteTransactionUseCase;
  double? transactionAmount;
  String? transactionAmountString;
  String? expenseName;
  final GetTransactionUseCase getTransactionUseCase;
  RecurringType recurringType = RecurringType.daily;
  int? selectedAccountId;
  int? selectedCategoryId;
  CategoryEntity? selectedCategory;
  DateTime selectedDate = DateTime.now();
  final SettingsUseCase settingsUseCase;
  TimeOfDay timeOfDay = TimeOfDay.now();
  AccountEntity? fromAccount, toAccount;
  TransactionType transactionType = TransactionType.expense;
  final EventBus eventBus;
  final UpdateTransactionUseCase updateTransactionUseCase;

  Future<void> _fetchExpenseFromId(
    _FindTransactionFromIdEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final int? expenseId = int.tryParse(event.expenseId ?? '');
    if (expenseId == null) {
      return;
    }

    final TransactionEntity? transaction =
        await getTransactionUseCase(GetTransactionParams(expenseId));
    if (transaction != null) {
      transactionAmount = transaction.currency;
      expenseName = transaction.name;
      selectedCategoryId = transaction.categoryId;
      selectedAccountId = transaction.accountId;
      selectedDate = transaction.time ?? DateTime.now();
      if (transaction.time == null) {
        timeOfDay = TimeOfDay.now();
      } else {
        timeOfDay = TimeOfDay.fromDateTime(transaction.time!);
      }
      transactionType = transaction.type ?? TransactionType.expense;
      currentDescription = transaction.description;
      currentExpense = transaction;
      emit(TransactionState.transaction(transaction));
      Future.delayed(Duration.zero).then((_) {
        add(TransactionEvent.changeTransactionType(transactionType));
      });
    } else {
      emit(const TransactionState.transactionError('Expense not found!'));
    }
  }

  Future<void> _addExpense(
    _AddOrUpdateExpenseEvent event,
    Emitter<TransactionState> emit,
  ) async {
    if (transactionType == TransactionType.transfer) {
      if ((fromAccount == null || toAccount == null) ||
          (fromAccount == toAccount)) {
        return emit(
          const TransactionState.transactionError(
              'Select both from and to accounts'),
        );
      }
      final double? validAmount = transactionAmount;
      final int? categoryId = selectedCategoryId;
      if (validAmount == null || validAmount == 0.0) {
        return emit(
            const TransactionState.transactionError('Enter valid amount'));
      }
      if (categoryId == null) {
        return emit(const TransactionState.transactionError('Select category'));
      }
      await addTransactionUseCase(AddTransactionParams(
        name:
            'Transfer from ${fromAccount!.bankName} to ${toAccount!.bankName}',
        amount: validAmount,
        time: selectedDate,
        categoryId: categoryId,
        accountId: fromAccount!.superId!,
        transactionType: TransactionType.expense,
        description: '',
      ));

      await addTransactionUseCase(AddTransactionParams(
        name:
            'Received from ${fromAccount?.bankName} to ${toAccount?.bankName}',
        amount: validAmount,
        time: selectedDate,
        categoryId: categoryId,
        accountId: toAccount!.superId!,
        transactionType: TransactionType.income,
        description: '',
      ));

      emit(const TransactionState.transactionAdded(isAddOrUpdate: true));
    } else {
      final double? validAmount = transactionAmount;
      final String? name = expenseName;
      final int? categoryId = selectedCategoryId;
      final int? accountId = selectedAccountId;
      final DateTime dateTime = selectedDate;
      final String? description = currentDescription;

      if (validAmount == null || validAmount == 0.0) {
        return emit(
            const TransactionState.transactionError('Enter valid amount'));
      }

      if (accountId == null || accountId == -1) {
        return emit(const TransactionState.transactionError('Select account'));
      }
      if (categoryId == null) {
        return emit(const TransactionState.transactionError('Select category'));
      }

      if (event.isAdding) {
        await addTransactionUseCase(AddTransactionParams(
          name: (name == null || name.isEmpty) ? selectedCategory?.name : name,
          amount: validAmount,
          time: dateTime,
          categoryId: categoryId,
          accountId: accountId,
          transactionType: transactionType,
          description: description,
        ));
      } else {
        if (currentExpense == null) return;
        await updateTransactionUseCase(UpdateTransactionParams(
          currentExpense!.superId!,
          accountId: accountId,
          categoryId: categoryId,
          currency: validAmount,
          description: description,
          name: (name == null || name.isEmpty) ? selectedCategory?.name : name,
          time: dateTime,
          type: transactionType,
        ));
      }
      emit(TransactionState.transactionAdded(isAddOrUpdate: event.isAdding));
      eventBus.fire(RefreshSummaryEvent());
    }
  }

  Future<void> _deleteExpense(
    _ClearExpenseEvent event,
    Emitter<TransactionState> emit,
  ) async {
    final int transactionId = int.parse(event.expenseId);
    await deleteTransactionUseCase(
      DeleteTransactionParams(transactionId),
    );
    emit(const TransactionState.transactionDeleted());
  }

  void _changeExpense(
    _ChangeTransactionTypeEvent event,
    Emitter<TransactionState> emit,
  ) {
    final List<AccountEntity> accounts = accountsUseCase(NoParams());
    if (accounts.isEmpty &&
        accounts.length <= 1 &&
        event.transactionType == TransactionType.transfer) {
      emit(const TransactionState.transactionError(
          'Need two or more accounts '));
    } else {
      transactionType = event.transactionType;
      emit(TransactionState.changeTransactionType(event.transactionType));
    }
  }

  FutureOr<void> _changeCategory(
    _ChangeCategoryEvent event,
    Emitter<TransactionState> emit,
  ) {
    selectedCategoryId = event.category.superId;
    selectedCategory = event.category;
    emit(TransactionState.changecCategory(event.category));
  }

  FutureOr<void> _changeAccount(
    _ChangeAccountEvent event,
    Emitter<TransactionState> emit,
  ) {
    selectedAccountId = event.account.superId;
    emit(TransactionState.changeAccount(event.account));
  }

  FutureOr<void> _updateDateTime(
    _UpdateDateTimeEvent event,
    Emitter<TransactionState> emit,
  ) {
    selectedDate = event.dateTime;
    emit(TransactionState.updateDateTime(event.dateTime));
  }

  FutureOr<void> _transferAccount(
    _TransferAccountEvent event,
    Emitter<TransactionState> emit,
  ) {
    if (event.isFromAccount) {
      fromAccount = event.account;
    } else {
      toAccount = event.account;
    }
    emit(TransactionState.transferAccount(
      isFromAccount: event.isFromAccount,
      fromAccount: fromAccount,
      toAccount: toAccount,
    ));
  }

  FutureOr<void> _fetchDefaultCategories(
    _FetchDefaultCategoryEvent event,
    Emitter<TransactionState> emit,
  ) {
    final List<CategoryEntity> categories =
        getDefaultCategoriesUseCase(NoParams());
    emit(TransactionState.defaultCategory(categories));
  }
}

double? evaluateExpression(String expression) {
  // Remove spaces from the expression
  expression = expression.replaceAll(' ', '');

  // Split the expression into a list of operands and operators
  List<String> tokens = expression.split(RegExp(r'(\+|\-|\*|\/)'));

  // Split the expression into a list of operators
  List<String> operators = expression.split(RegExp(r'[0-9]+'));

  // Remove empty strings from the list
  tokens.removeWhere((element) => element.isEmpty);
  operators.removeWhere((element) => element.isEmpty);

  // Initial result is the first operand
  double? result = double.tryParse(tokens[0]);

  // Iterate through the tokens and operators to perform the calculations
  for (int i = 1; i < tokens.length; i++) {
    String operator = operators[i - 1];
    double? operand = double.tryParse(tokens[i]);

    switch (operator) {
      case '+':
        result = (result ?? 0) + (operand ?? 0);
        break;
      case '-':
        result = (result ?? 0) - (operand ?? 0);
        break;
      case '*':
        result = (result ?? 0) * (operand ?? 0);
        break;
      case '/':
        result = (result ?? 0) / (operand ?? 0);
        break;
      default:
        throw Exception("Invalid operator");
    }
  }

  return result;
}
