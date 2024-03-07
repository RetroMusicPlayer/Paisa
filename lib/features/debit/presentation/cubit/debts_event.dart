part of 'debts_bloc.dart';

@immutable
abstract class DebtsEvent extends Equatable {
  const DebtsEvent();

  @override
  List<Object?> get props => [];
}

class AddTransactionToDebtEvent extends DebtsEvent {
  const AddTransactionToDebtEvent(this.debt, this.amount, this.dateTime);

  final double amount;
  final DateTime dateTime;
  final DebitEntity debt;

  @override
  List<Object?> get props => [debt, amount];
}

class FetchDebtOrCreditFromIdEvent extends DebtsEvent {
  const FetchDebtOrCreditFromIdEvent(this.id);

  final String? id;

  @override
  List<Object?> get props => [id];
}

class AddOrUpdateEvent extends DebtsEvent {
  const AddOrUpdateEvent(this.isUpdate);

  final bool isUpdate;

  @override
  List<Object?> get props => [isUpdate];
}

class ChangeDebtTypeEvent extends DebtsEvent {
  const ChangeDebtTypeEvent(this.debtType);

  final DebitType debtType;

  @override
  List<Object?> get props => [debtType];
}

class SelectedEndDateEvent extends DebtsEvent {
  const SelectedEndDateEvent(this.endDateTime);

  final DateTime endDateTime;

  @override
  List<Object> get props => [endDateTime];
}

class SelectedStartDateEvent extends DebtsEvent {
  const SelectedStartDateEvent(this.startDateTime);

  final DateTime startDateTime;

  @override
  List<Object> get props => [startDateTime];
}

class DeleteDebtEvent extends DebtsEvent {
  const DeleteDebtEvent(this.id);

  final int id;

  @override
  List<Object?> get props => [id];
}

class DeleteTransactionEvent extends DebtsEvent {
  const DeleteTransactionEvent(this.id);

  final int id;

  @override
  List<Object?> get props => [id];
}
