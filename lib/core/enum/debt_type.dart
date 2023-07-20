import 'package:hive/hive.dart';

part 'debt_type.g.dart';

@HiveType(typeId: 15)
enum DebtType {
  @HiveField(1)
  debt,
  @HiveField(2)
  credit;
}
