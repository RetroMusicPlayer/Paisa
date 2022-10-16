import '../models/debt.dart';

abstract class DebtLocalDataSource {
  Future<void> addDebtOrCredit(Debt debt);

  Future<Debt?> fetchDebtOrCreditFromId(int debtId);
}
