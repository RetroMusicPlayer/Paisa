part of 'debts_cubit.dart';

@immutable
abstract class DebtsEvent extends Equatable {
  const DebtsEvent();

  @override
  List<Object?> get props => [];
}

class AddTransactionToDebtEvent extends DebtsEvent {
  final Debt debt;
  final double amount;

  const AddTransactionToDebtEvent(this.debt, this.amount);

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
