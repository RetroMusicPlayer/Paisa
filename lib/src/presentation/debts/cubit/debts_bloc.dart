import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/enum/debt_type.dart';
import '../../../data/debt/models/debt_model.dart';
import '../../../domain/debt/entities/debt.dart';
import '../../../domain/debt/use_case/debt_use_case.dart';

part 'debts_event.dart';
part 'debts_state.dart';

enum SelectedTime { start, end }

@injectable
class DebtsBloc extends Bloc<DebtsEvent, DebtsState> {
  DebtsBloc({
    required this.addDebtUseCase,
    required this.getDebtUseCase,
    required this.getTransactionsUseCase,
    required this.addTransactionUseCase,
    required this.updateDebtUseCase,
    required this.deleteDebtUseCase,
    required this.deleteTransactionsUseCase,
    required this.deleteTransactionUseCase,
  }) : super(DebtsInitial()) {
    on<AddTransactionToDebtEvent>(_addTransactionToDebt);
    on<ChangeDebtTypeEvent>(_changeType);
    on<FetchDebtOrCreditFromIdEvent>(_fetchDebtOrCreditFromId);
    on<AddOrUpdateEvent>(addDebt);
    on<SelectedStartDateEvent>(_selectedStartDateEvent);
    on<SelectedEndDateEvent>(_selectedEndDateEvent);
    on<DeleteDebtEvent>(_deleteDebit);
    on<DeleteTransactionEvent>(_deleteTransaction);
  }

  final AddDebtUseCase addDebtUseCase;
  final AddTransactionUseCase addTransactionUseCase;
  double? currentAmount;
  Debt? currentDebt;
  DebtType currentDebtType = DebtType.debt;
  String? currentDescription;
  DateTime? endDateTime;
  String? currentName;
  DateTime? startDateTime;
  final DeleteDebtUseCase deleteDebtUseCase;
  final DeleteTransactionUseCase deleteTransactionUseCase;
  final DeleteTransactionsUseCase deleteTransactionsUseCase;
  final GetDebtUseCase getDebtUseCase;
  final GetTransactionsUseCase getTransactionsUseCase;
  final UpdateDebtUseCase updateDebtUseCase;

  Future<void> addDebt(
    AddOrUpdateEvent event,
    Emitter<DebtsState> emit,
  ) async {
    final String? name = currentName?.trim();
    final double? amount = currentAmount;
    final String? description = currentDescription?.trim();
    final DateTime? dateTime = startDateTime;
    final DateTime? dueDateTime = endDateTime;
    final DebtType debtType = currentDebtType;

    if (amount == null) {
      return emit(const DebtErrorState('Enter amount'));
    }
    if (name == null) {
      return emit(const DebtErrorState('Debt name'));
    }

    if (dateTime == null) {
      return emit(const DebtErrorState('Select start date'));
    }

    if (dueDateTime == null) {
      return emit(const DebtErrorState('Select end date'));
    }
    if (event.isUpdate) {
      await addDebtUseCase(
        amount: amount,
        currentDateTime: dateTime,
        debtType: debtType,
        description: description ?? '',
        dueDateTime: dueDateTime,
        name: name,
      );
    } else {
      if (currentDebt != null) {
        currentDebt!
          ..amount = amount
          ..dateTime = dateTime
          ..debtType = debtType
          ..description = description ?? ''
          ..expiryDateTime = dueDateTime
          ..name = name;
        await updateDebtUseCase(currentDebt!);
      }
    }
    emit(DebtsAdded(isUpdate: event.isUpdate));
  }

  FutureOr<void> _selectedStartDateEvent(
    SelectedStartDateEvent event,
    Emitter<DebtsState> emit,
  ) {
    startDateTime = event.startDateTime;
    emit(SelectedStartDateState(event.startDateTime));
  }

  FutureOr<void> _selectedEndDateEvent(
    SelectedEndDateEvent event,
    Emitter<DebtsState> emit,
  ) {
    endDateTime = event.endDateTime;
    emit(SelectedEndDateState(event.endDateTime));
  }

  Future<void> _addTransactionToDebt(
    AddTransactionToDebtEvent event,
    Emitter<DebtsState> emit,
  ) async {
    await addTransactionUseCase(
      amount: event.amount,
      currentDateTime: event.dateTime,
      parentId: event.debt.superId!,
    );
    emit(TransactionAddedState());
  }

  Future<void> _fetchDebtOrCreditFromId(
    FetchDebtOrCreditFromIdEvent event,
    Emitter<DebtsState> emit,
  ) async {
    final int? debtId = int.tryParse(event.id ?? '');
    if (debtId == null) {
      add(SelectedStartDateEvent(DateTime.now()));
      add(SelectedEndDateEvent(DateTime.now()));
      return;
    }

    final Debt? debt = getDebtUseCase(debtId);
    if (debt != null) {
      currentAmount = debt.amount;
      currentName = debt.name;
      currentDescription = debt.description;
      startDateTime = debt.dateTime;
      endDateTime = debt.expiryDateTime;
      currentDebtType = debt.debtType;
      currentDebt = debt;
      emit(DebtsSuccessState(debt));

      Future.delayed(Duration.zero).then((value) {
        add(ChangeDebtTypeEvent(currentDebtType));
        add(SelectedStartDateEvent(startDateTime!));
        add(SelectedEndDateEvent(endDateTime!));
      });
    } else {
      emit(const DebtErrorState('Debt not found'));
    }
  }

  void _changeType(
    ChangeDebtTypeEvent event,
    Emitter<DebtsState> emit,
  ) {
    currentDebtType = event.debtType;
    emit(DebtsTabState(event.debtType));
  }

  FutureOr<void> _deleteDebit(
    DeleteDebtEvent event,
    Emitter<DebtsState> emit,
  ) async {
    await deleteDebtUseCase(event.id);
    await deleteTransactionsUseCase(event.id);
    emit(DeleteDebtsState());
  }

  FutureOr<void> _deleteTransaction(
    DeleteTransactionEvent event,
    Emitter<DebtsState> emit,
  ) async {
    await deleteTransactionUseCase(event.id);
    emit(DeleteDebtsState());
  }
}
