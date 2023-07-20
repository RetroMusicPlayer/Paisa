// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debit_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DebitModelAdapter extends TypeAdapter<DebitModel> {
  @override
  final int typeId = 4;

  @override
  DebitModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DebitModel(
      description: fields[1] as String,
      name: fields[7] == null ? '' : fields[7] as String,
      amount: fields[2] as double,
      dateTime: fields[3] as DateTime,
      expiryDateTime: fields[4] as DateTime,
      debtType: fields[5] == null ? DebtType.debt : fields[5] as DebtType,
      superId: fields[6] == null ? 0 : fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, DebitModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.dateTime)
      ..writeByte(5)
      ..write(obj.debtType)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.expiryDateTime)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.superId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DebitModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
