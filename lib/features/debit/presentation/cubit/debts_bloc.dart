import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/features/debit/data/models/debit_model.dart';
import 'package:paisa/features/debit/domain/entities/debit.dart';
import 'package:paisa/features/debit/domain/use_case/debit_use_case.dart';
import 'package:paisa/features/debit/domain/use_case/delete_debit_transactions_by_debit_id_use_case.dart';

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

  final AddDebtUseCase addDebtUseCase;
  final AddTransactionUseCase addTransactionUseCase;
  double? currentAmount;
  Debit? currentDebt;
  DebtType currentDebtType = DebtType.debt;
  String? currentDescription;
  String? currentName;
  final DeleteDebtUseCase deleteDebtUseCase;
  final DeleteDebitTransactionUseCase deleteDebitTransactionUseCase;
  final DeleteDebitTransactionsByDebitIdUseCase
      deleteDebitTransactionsByDebitIdUseCase;
  DateTime? endDateTime;
  final GetDebtUseCase getDebtUseCase;
  final GetDebitTransactionsUseCase getTransactionsUseCase;
  DateTime? startDateTime;
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
        params: AddDebit(
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
        await updateDebtUseCase(
            params: UpdateDebitParams(
          currentDebt!.key,
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
      params: AddDebitTransactionParams(
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

    final Debit? debt = getDebtUseCase(params: GetDebitParams(debitId));
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
    final int debitId = event.id;
    await deleteDebtUseCase(params: DeleteDebitParams(debitId));
    await deleteDebitTransactionsByDebitIdUseCase(
        params: DeleteDebitTransactionsbyDebitIdParams(debitId));
    emit(DeleteDebtsState());
  }

  FutureOr<void> _deleteTransaction(
    DeleteTransactionEvent event,
    Emitter<DebtsState> emit,
  ) async {
    await deleteDebitTransactionUseCase(
      params: DeleteDebitTransactionParams(event.id),
    );
    emit(DeleteDebtsState());
  }
}
