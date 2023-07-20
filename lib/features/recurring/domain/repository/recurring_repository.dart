import 'package:paisa/core/common_enum.dart';

abstract class RecurringRepository {
  Future<void> checkForRecurring();

  Future<void> addRecurringEvent(
    String name,
    double amount,
    DateTime recurringTime,
    RecurringType recurringType,
    int selectedAccountId,
    int selectedCategoryId,
    TransactionType transactionType,
  );
}
