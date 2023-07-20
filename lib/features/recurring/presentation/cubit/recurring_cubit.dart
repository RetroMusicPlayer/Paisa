import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/recurring/domain/use_case/recurring_use_case.dart';

part 'recurring_state.dart';

@injectable
class RecurringCubit extends Cubit<RecurringState> {
  RecurringCubit(this.addRecurringUseCase) : super(RecurringInitial());

  final AddRecurringUseCase addRecurringUseCase;
  double? amount;
  String? recurringName;
  RecurringType recurringType = RecurringType.daily;
  int? selectedAccountId;
  int? selectedCategoryId;
  DateTime selectedDate = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();
  TransactionType transactionType = TransactionType.expense;

  Future<void> addRecurringEvent() async {
    final double? validAmount = amount;
    final String? name = recurringName;
    final DateTime dateTime = selectedDate;
    final int? accountId = selectedAccountId;
    final int? categoryId = selectedCategoryId;

    if (name == null) {
      return emit(const RecurringErrorState('Enter name'));
    }
    if (validAmount == null) {
      return emit(const RecurringErrorState('Enter amount'));
    }
    if (accountId == null) {
      return emit(const RecurringErrorState('Selected account'));
    }
    if (categoryId == null) {
      return emit(const RecurringErrorState('Selected category'));
    }

    await addRecurringUseCase(
      name,
      validAmount,
      dateTime,
      recurringType,
      accountId,
      categoryId,
      transactionType,
    );
    emit(RecurringEventAddedState());
  }

  void changeRecurringEvent(RecurringType type) {
    recurringType = type;
    emit(RecurringTypeState(type));
  }

  void changeTransactionType(TransactionType type) {
    transactionType = type;
    emit(TransactionTypeState(type));
  }
}
