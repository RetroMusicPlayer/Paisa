import 'package:injectable/injectable.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/recurring/domain/repository/recurring_repository.dart';

@singleton
class AddRecurringUseCase {
  AddRecurringUseCase(this.repository);

  final RecurringRepository repository;

  Future<void> call(
    String name,
    double amount,
    DateTime recurringTime,
    RecurringType recurringType,
    int selectedAccountId,
    int selectedCategoryId,
    TransactionType transactionType,
  ) {
    return repository.addRecurringEvent(
      name,
      amount,
      recurringTime,
      recurringType,
      selectedAccountId,
      selectedCategoryId,
      transactionType,
    );
  }
}
