import '../../../common/enum/debt_type.dart';
import '../../../data/debt/models/debt.dart';

abstract class DebtRepository {
  Future<void> addDebtOrCredit(
    String description,
    String name,
    double amount,
    DateTime currentDateTime,
    DateTime dueDateTime,
    DebtType debtType,
  );

  Future<Debt?> fetchDebtOrCreditFromId(int debtId);
}
