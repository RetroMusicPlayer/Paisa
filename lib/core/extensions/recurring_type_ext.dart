import 'package:paisa/core/common_enum.dart';

extension RecurringTypeHelper on RecurringType {
  Duration get getTime {
    switch (this) {
      case RecurringType.daily:
        return const Duration(days: 1);
      case RecurringType.weekly:
        return const Duration(days: 7);
      case RecurringType.monthly:
        return const Duration(days: 30);
      case RecurringType.yearly:
        return const Duration(days: 365);
    }
  }

  int differenceInNumber(DateTime now, DateTime recurring) {
    switch (this) {
      case RecurringType.daily:
        int days = now.difference(recurring).inDays;
        return days ~/ 1;
      case RecurringType.weekly:
        int days = now.difference(recurring).inDays;
        return days ~/ 7;
      case RecurringType.monthly:
        int days = now.difference(recurring).inDays;
        return days ~/ 30;
      case RecurringType.yearly:
        int days = now.difference(recurring).inDays;
        return days ~/ 365;
    }
  }
}
