// Project imports:
import 'package:paisa/core/enum/debt_type.dart';
import 'package:paisa/features/debit/domain/entities/debit.dart';

abstract class DebitRepository {
  Future<void> addDebtOrCredit(
    String description,
    String name,
    double amount,
    DateTime currentDateTime,
    DateTime dueDateTime,
    DebitType debtType,
  );

  Future<void> updateDebt({
    required String description,
    required String name,
    required double amount,
    required DateTime currentDateTime,
    required DateTime dueDateTime,
    required DebitType debtType,
    required int key,
  });

  Future<DebitEntity?> fetchDebtOrCreditFromId(int debtId);

  Future<void> deleteDebtOrCreditFromId(int debtId);
}
