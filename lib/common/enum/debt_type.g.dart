// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DebtTypeAdapter extends TypeAdapter<DebtType> {
  @override
  final int typeId = 15;

  @override
  DebtType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 1:
        return DebtType.debt;
      case 2:
        return DebtType.credit;
      default:
        return DebtType.debt;
    }
  }

  @override
  void write(BinaryWriter writer, DebtType obj) {
    switch (obj) {
      case DebtType.debt:
        writer.writeByte(1);
        break;
      case DebtType.credit:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DebtTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
