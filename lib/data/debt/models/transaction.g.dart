// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionAdapter extends TypeAdapter<Transaction> {
  @override
  final int typeId = 3;

  @override
  Transaction read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Transaction(
      fields[1] as double,
      fields[2] as DateTime,
    )..superId = fields[3] as int?;
  }

  @override
  void write(BinaryWriter writer, Transaction obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.now)
      ..writeByte(3)
      ..write(obj.superId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
