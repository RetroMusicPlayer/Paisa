part of 'debts_bloc.dart';

abstract class DebtsState extends Equatable {
  const DebtsState();

  @override
  List<Object> get props => [];
}

class DebtsInitial extends DebtsState {}

class DebtsAdded extends DebtsState {
  final bool isUpdate;

  const DebtsAdded({this.isUpdate = false});
  @override
  List<Object> get props => [isUpdate];
}

class DebtsTabState extends DebtsState {
  final DebtType debtType;

  const DebtsTabState(this.debtType);

  @override
  List<Object> get props => [debtType];
}

class DebtsSuccessState extends DebtsState {
  final DebtModel debt;

  const DebtsSuccessState(this.debt);

  @override
  List<Object> get props => [debt];
}

class DebtErrorState extends DebtsState {
  final String errorString;

  const DebtErrorState(this.errorString);
  @override
  List<Object> get props => [errorString];
}

class TransactionAddedState extends DebtsState {}

class SelectedEndDateState extends DebtsState {
  final DateTime endDateTime;

  const SelectedEndDateState(this.endDateTime);

  @override
  List<Object> get props => [endDateTime];
}

class SelectedStartDateState extends DebtsState {
  final DateTime startDateTime;

  const SelectedStartDateState(this.startDateTime);

  @override
  List<Object> get props => [startDateTime];
}

class DeleteDebtsState extends DebtsState {}

class DeleteTransactionState extends DebtsState {}
