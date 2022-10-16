// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DebtAdapter extends TypeAdapter<Debt> {
  @override
  final int typeId = 4;

  @override
  Debt read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Debt(
      description: fields[1] as String,
      name: fields[7] == null ? '' : fields[7] as String,
      amount: fields[2] as double,
      dateTime: fields[3] as DateTime,
      expiryDateTime: fields[4] as DateTime,
      debtType: fields[5] == null ? DebtType.debt : fields[5] as DebtType,
    )..superId = fields[6] == null ? 0 : fields[6] as int?;
  }

  @override
  void write(BinaryWriter writer, Debt obj) {
    writer
      ..writeByte(8)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.dateTime)
      ..writeByte(4)
      ..write(obj.expiryDateTime)
      ..writeByte(5)
      ..write(obj.debtType)
      ..writeByte(6)
      ..write(obj.superId)
      ..writeByte(8)
      ..write(obj.transactions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DebtAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
