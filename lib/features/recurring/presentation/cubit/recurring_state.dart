part of 'recurring_cubit.dart';

abstract class RecurringState extends Equatable {
  const RecurringState();

  @override
  List<Object> get props => [];
}

class RecurringInitial extends RecurringState {}

class RecurringEventAddedState extends RecurringState {}

class RecurringErrorState extends RecurringState {
  const RecurringErrorState(this.error);

  final String error;

  @override
  List<Object> get props => [error];
}

class RecurringTypeState extends RecurringState {
  const RecurringTypeState(this.recurringType);

  final RecurringType recurringType;

  @override
  List<Object> get props => [recurringType];
}

class TransactionTypeState extends RecurringState {
  const TransactionTypeState(this.transactionType);

  final TransactionType transactionType;

  @override
  List<Object> get props => [transactionType];
}
