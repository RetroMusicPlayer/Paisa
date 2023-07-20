import '../model/recurring.dart';

abstract class LocalRecurringDataManager {
  Future<void> addRecurringEvent(RecurringModel recurringModel);

  List<RecurringModel> recurringModels();

  Future<void> clearRecurring(int recurringId);
}
