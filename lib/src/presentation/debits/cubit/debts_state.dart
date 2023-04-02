part of 'debts_cubit.dart';

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

class SelectedDateState extends DebtsState {
  final DateTime startDateTime;
  final DateTime endDateTime;

  const SelectedDateState(this.startDateTime, this.endDateTime);

  @override
  List<Object> get props => [startDateTime, endDateTime];

  SelectedDateState copyWith({
    DateTime? startDateTime,
    DateTime? endDateTime,
  }) {
    return SelectedDateState(
      startDateTime ?? this.startDateTime,
      endDateTime ?? this.endDateTime,
    );
  }
}

class DeleteDebtsState extends DebtsState {}

class DeleteTransactionState extends DebtsState {}
