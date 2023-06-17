part of 'debts_bloc.dart';

@immutable
abstract class DebtsEvent extends Equatable {
  const DebtsEvent();

  @override
  List<Object?> get props => [];
}

class AddTransactionToDebtEvent extends DebtsEvent {
  final DebtModel debt;
  final double amount;
  final DateTime dateTime;

  const AddTransactionToDebtEvent(this.debt, this.amount, this.dateTime);

  @override
  List<Object?> get props => [debt, amount];
}

class FetchDebtOrCreditFromIdEvent extends DebtsEvent {
  final String? id;

  const FetchDebtOrCreditFromIdEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class AddOrUpdateEvent extends DebtsEvent {
  final bool isUpdate;

  const AddOrUpdateEvent(this.isUpdate);

  @override
  List<Object?> get props => [isUpdate];
}

class ChangeDebtTypeEvent extends DebtsEvent {
  final DebtType debtType;

  const ChangeDebtTypeEvent(this.debtType);

  @override
  List<Object?> get props => [debtType];
}

class SelectedEndDateEvent extends DebtsEvent {
  final DateTime endDateTime;

  const SelectedEndDateEvent(this.endDateTime);

  @override
  List<Object> get props => [endDateTime];
}

class SelectedStartDateEvent extends DebtsEvent {
  final DateTime startDateTime;

  const SelectedStartDateEvent(this.startDateTime);

  @override
  List<Object> get props => [startDateTime];
}

class DeleteDebtEvent extends DebtsEvent {
  final int id;

  const DeleteDebtEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class DeleteTransactionEvent extends DebtsEvent {
  final int id;

  const DeleteTransactionEvent(this.id);

  @override
  List<Object?> get props => [id];
}
