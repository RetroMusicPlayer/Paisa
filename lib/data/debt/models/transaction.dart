import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 3)
class Transaction extends HiveObject with EquatableMixin {
  @HiveField(1)
  final double amount;

  @HiveField(2)
  final DateTime now;

  @HiveField(3)
  int? superId;

  Transaction(this.amount, this.now);

  @override
  List<Object?> get props => [now, amount];
}
