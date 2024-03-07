import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/features/debit/domain/entities/debit_entity.dart';
import 'package:paisa/features/debit/domain/use_case/debit_use_case.dart';
import 'package:paisa/features/debit_transaction/domain/use_case/debit_transaction_use_case.dart';

part 'debts_event.dart';
part 'debts_state.dart';

enum SelectedTime { start, end }

@injectable
class DebitBloc extends Bloc<DebtsEvent, DebtsState> {
  DebitBloc({
    required this.addDebtUseCase,
    required this.getDebtUseCase,
    required this.getTransactionsUseCase,
    required this.addTransactionUseCase,
    required this.updateDebtUseCase,
    required this.deleteDebtUseCase,
    required this.deleteDebitTransactionUseCase,
    required this.deleteDebitTransactionsByDebitIdUseCase,
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

  final AddDebitUseCase addDebtUseCase;
  final AddDebitTransactionUseCase addTransactionUseCase;
  double? currentAmount;
  DebitEntity? currentDebt;
  DebitType currentDebtType = DebitType.debit;
  String? currentDescription;
  String? currentName;
  final DeleteDebitUseCase deleteDebtUseCase;
  final DeleteDebitTransactionUseCase deleteDebitTransactionUseCase;
  final DeleteDebitTransactionsByDebitIdUseCase
      deleteDebitTransactionsByDebitIdUseCase;
  DateTime? endDateTime;
  final GetDebitUseCase getDebtUseCase;
  final GetDebitTransactionsUseCase getTransactionsUseCase;
  DateTime? startDateTime;
  final UpdateDebitUseCase updateDebtUseCase;

  Future<void> addDebt(
    AddOrUpdateEvent event,
    Emitter<DebtsState> emit,
  ) async {
    final String? name = currentName?.trim();
    final double? amount = currentAmount;
    final String? description = currentDescription?.trim();
    final DateTime? dateTime = startDateTime;
    final DateTime? dueDateTime = endDateTime;
    final DebitType debtType = currentDebtType;

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
        ParamsAddDebit(
          description: description ?? '',
          name: name,
          amount: amount,
          currentDateTime: dateTime,
          dueDateTime: dueDateTime,
          debtType: debtType,
        ),
      );
    } else {
      if (currentDebt != null) {
        await updateDebtUseCase(UpdateDebitParams(
          currentDebt!.superId!,
          description: description ?? '',
          name: name,
          amount: amount,
          currentDateTime: dateTime,
          dueDateTime: dueDateTime,
          debtType: debtType,
        ));
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
      AddDebitTransactionParams(
        event.amount,
        event.dateTime,
        event.debt.superId!,
      ),
    );
    emit(TransactionAddedState());
  }

  Future<void> _fetchDebtOrCreditFromId(
    FetchDebtOrCreditFromIdEvent event,
    Emitter<DebtsState> emit,
  ) async {
    final int? debitId = int.tryParse(event.id ?? '');
    if (debitId == null) {
      add(SelectedStartDateEvent(DateTime.now()));
      add(SelectedEndDateEvent(DateTime.now()));
      return;
    }

    final debtFold = await getDebtUseCase(GetDebitParams(debitId));
    debtFold.fold((l) {
      emit(const DebtErrorState('Debt not found'));
    }, (DebitEntity debitEntity) {
      currentAmount = debitEntity.amount;
      currentName = debitEntity.name;
      currentDescription = debitEntity.description;
      startDateTime = debitEntity.dateTime;
      endDateTime = debitEntity.expiryDateTime;
      currentDebtType = debitEntity.debtType ?? DebitType.credit;
      currentDebt = debitEntity;
      emit(DebtsSuccessState(debitEntity));
      Future.delayed(Duration.zero).then((value) {
        add(ChangeDebtTypeEvent(currentDebtType));
        add(SelectedStartDateEvent(startDateTime!));
        add(SelectedEndDateEvent(endDateTime!));
      });
    });
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
    final int debitId = event.id;
    await deleteDebtUseCase(DeleteDebitParams(debitId));
    await deleteDebitTransactionsByDebitIdUseCase(
        DeleteDebitTransactionsDebitIdParams(debitId));
    emit(DeleteDebtsState());
  }

  FutureOr<void> _deleteTransaction(
    DeleteTransactionEvent event,
    Emitter<DebtsState> emit,
  ) async {
    await deleteDebitTransactionUseCase(
      DeleteDebitTransactionParams(event.id),
    );
    emit(DeleteDebtsState());
  }
}
