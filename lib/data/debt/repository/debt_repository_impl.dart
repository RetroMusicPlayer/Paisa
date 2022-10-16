import '../../../common/enum/debt_type.dart';
import '../../../domain/debt/repository/debit_repository.dart';
import '../data_sources/debt_local_data_source.dart';
import '../models/debt.dart';

class DebtRepositoryImpl extends DebtRepository {
  final DebtLocalDataSource dataSource;

  DebtRepositoryImpl({required this.dataSource});
  @override
  Future<void> addDebtOrCredit(
    String description,
    String name,
    double amount,
    DateTime currentDateTime,
    DateTime dueDateTime,
    DebtType debtType,
  ) async {
    await dataSource.addDebtOrCredit(
      Debt(
        description: description,
        amount: amount,
        dateTime: currentDateTime,
        expiryDateTime: dueDateTime,
        debtType: debtType,
        name: name,
      ),
    );
  }

  @override
  Future<Debt?> fetchDebtOrCreditFromId(int debtId) =>
      dataSource.fetchDebtOrCreditFromId(debtId);
}
