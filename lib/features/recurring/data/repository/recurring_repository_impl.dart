import 'package:injectable/injectable.dart';
import 'package:paisa/core/common.dart';
import 'package:paisa/core/common_enum.dart';
import 'package:paisa/features/recurring/data/data_sources/local_recurring_data_manager.dart';
import 'package:paisa/features/recurring/data/model/recurring.dart';
import 'package:paisa/features/recurring/domain/repository/recurring_repository.dart';
import 'package:paisa/features/transaction/data/data_sources/local/transaction_data_manager.dart';
import 'package:paisa/features/transaction/data/model/transaction_model.dart';

@Singleton(as: RecurringRepository)
class RecurringRepositoryImpl implements RecurringRepository {
  RecurringRepositoryImpl(this.dataManager, this.expenseDataManager);

  final LocalRecurringDataManager dataManager;
  final LocalTransactionManager expenseDataManager;

  @override
  Future<void> addRecurringEvent(
    String name,
    double amount,
    DateTime recurringTime,
    RecurringType recurringType,
    int selectedAccountId,
    int selectedCategoryId,
    TransactionType transactionType,
  ) {
    return dataManager.addRecurringEvent(
      RecurringModel(
        name: name,
        amount: amount,
        recurringType: recurringType,
        recurringDate: recurringTime,
        accountId: selectedAccountId,
        categoryId: selectedCategoryId,
        transactionType: transactionType,
      ),
    );
  }

  @override
  Future<void> checkForRecurring() async {
    final List<RecurringModel> recurringModels = dataManager.recurringModels();
    final now = DateTime.now();
    for (final RecurringModel recurringModel in recurringModels) {
      if (recurringModel.recurringDate.isBefore(now)) {
        final nextTime = recurringModel.recurringType.getTime;

        final numberOfTimes = recurringModel.recurringType
            .differenceInNumber(now, recurringModel.recurringDate);
        for (var i = 0; i < numberOfTimes; i++) {
          final TransactionModel addExpenseModel = recurringModel
              .toExpenseModel(recurringModel.recurringDate.add(nextTime * i));
          //TODO: fix
          // await expenseDataManager.add(addExpenseModel);
        }
        final RecurringModel saveExpense = recurringModel.copyWith(
          recurringDate:
              recurringModel.recurringDate.add(nextTime * (numberOfTimes + 1)),
        );

        await dataManager.addRecurringEvent(saveExpense);
        await dataManager.clearRecurring(recurringModel.superId!);
      }
    }
  }
}
