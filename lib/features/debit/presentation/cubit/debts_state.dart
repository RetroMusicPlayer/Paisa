part of 'debts_bloc.dart';

abstract class DebtsState extends Equatable {
  const DebtsState();

  @override
  List<Object> get props => [];
}

class DebtsInitial extends DebtsState {}

class DebtsAdded extends DebtsState {
  const DebtsAdded({this.isUpdate = false});

  final bool isUpdate;

  @override
  List<Object> get props => [isUpdate];
}

class DebtsTabState extends DebtsState {
  const DebtsTabState(this.debtType);

  final DebtType debtType;

  @override
  List<Object> get props => [debtType];
}

class DebtsSuccessState extends DebtsState {
  const DebtsSuccessState(this.debt);

  final DebitModel debt;

  @override
  List<Object> get props => [debt];
}

class DebtErrorState extends DebtsState {
  const DebtErrorState(this.errorString);

  final String errorString;

  @override
  List<Object> get props => [errorString];
}

class TransactionAddedState extends DebtsState {}

class SelectedEndDateState extends DebtsState {
  const SelectedEndDateState(this.endDateTime);

  final DateTime endDateTime;

  @override
  List<Object> get props => [endDateTime];
}

class SelectedStartDateState extends DebtsState {
  const SelectedStartDateState(this.startDateTime);

  final DateTime startDateTime;

  @override
  List<Object> get props => [startDateTime];
}

class DeleteDebtsState extends DebtsState {}

class DeleteTransactionState extends DebtsState {}
