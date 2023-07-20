import 'package:hive/hive.dart';

part 'filter_expense.g.dart';

@HiveType(typeId: 22)
enum FilterExpense {
  @HiveField(0)
  daily,
  @HiveField(1)
  weekly,
  @HiveField(2)
  monthly,
  @HiveField(3)
  yearly,
  @HiveField(4)
  all;
}
