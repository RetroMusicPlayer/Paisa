import '../../../common/enum/debt_type.dart';
import '../../../data/debt/models/debt.dart';
import '../repository/debit_repository.dart';

class DebtUseCase {
  final DebtRepository repository;

  DebtUseCase({required this.repository});

  Future<void> addDebtOrCredit({
    required String description,
    required String name,
    required double amount,
    required DateTime currentDateTime,
    required DateTime dueDateTime,
    required DebtType debtType,
  }) =>
      repository.addDebtOrCredit(
        description,
        name,
        amount,
        currentDateTime,
        dueDateTime,
        debtType,
      );

  Future<Debt?> fetchDebtOrCreditFromId(int debtId) =>
      repository.fetchDebtOrCreditFromId(debtId);
}
