// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountModelAdapter extends TypeAdapter<AccountModel> {
  @override
  final int typeId = 2;

  @override
  AccountModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AccountModel(
      name: fields[0] as String?,
      bankName: fields[3] as String?,
      number: fields[5] as String?,
      cardType: fields[6] == null ? CardType.bank : fields[6] as CardType?,
      superId: fields[7] == null ? 0 : fields[7] as int?,
      amount: fields[8] == null ? 0 : fields[8] as double?,
      color: fields[9] == null ? 4294951175 : fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AccountModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(8)
      ..write(obj.amount)
      ..writeByte(3)
      ..write(obj.bankName)
      ..writeByte(6)
      ..write(obj.cardType)
      ..writeByte(9)
      ..write(obj.color)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.number)
      ..writeByte(7)
      ..write(obj.superId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
