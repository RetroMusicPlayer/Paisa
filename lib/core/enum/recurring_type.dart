import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:paisa/core/common.dart';

part 'recurring_type.g.dart';

@HiveType(typeId: 6)
enum RecurringType {
  @HiveField(0)
  daily,
  @HiveField(1)
  weekly,
  @HiveField(2)
  monthly,
  @HiveField(3)
  yearly;

  String name(BuildContext context) {
    switch (this) {
      case RecurringType.daily:
        return context.loc.daily;
      case RecurringType.weekly:
        return context.loc.weekly;
      case RecurringType.monthly:
        return context.loc.monthly;
      case RecurringType.yearly:
        return context.loc.yearly;
    }
  }
}
