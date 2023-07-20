// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecurringModelAdapter extends TypeAdapter<RecurringModel> {
  @override
  final int typeId = 5;

  @override
  RecurringModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecurringModel(
      name: fields[0] as String,
      amount: fields[1] as double,
      recurringType:
          fields[2] == null ? RecurringType.daily : fields[2] as RecurringType,
      recurringDate: fields[3] as DateTime,
      accountId: fields[5] as int,
      categoryId: fields[6] as int,
      transactionType: fields[7] == null
          ? TransactionType.expense
          : fields[7] as TransactionType,
      superId: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, RecurringModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(5)
      ..write(obj.accountId)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(6)
      ..write(obj.categoryId)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.recurringDate)
      ..writeByte(2)
      ..write(obj.recurringType)
      ..writeByte(4)
      ..write(obj.superId)
      ..writeByte(7)
      ..write(obj.transactionType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecurringModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
