// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_expense.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FilterExpenseAdapter extends TypeAdapter<FilterExpense> {
  @override
  final int typeId = 22;

  @override
  FilterExpense read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FilterExpense.daily;
      case 1:
        return FilterExpense.weekly;
      case 2:
        return FilterExpense.monthly;
      case 3:
        return FilterExpense.yearly;
      case 4:
        return FilterExpense.all;
      default:
        return FilterExpense.daily;
    }
  }

  @override
  void write(BinaryWriter writer, FilterExpense obj) {
    switch (obj) {
      case FilterExpense.daily:
        writer.writeByte(0);
        break;
      case FilterExpense.weekly:
        writer.writeByte(1);
        break;
      case FilterExpense.monthly:
        writer.writeByte(2);
        break;
      case FilterExpense.yearly:
        writer.writeByte(3);
        break;
      case FilterExpense.all:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilterExpenseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
