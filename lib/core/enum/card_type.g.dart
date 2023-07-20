// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardTypeAdapter extends TypeAdapter<CardType> {
  @override
  final int typeId = 12;

  @override
  CardType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CardType.cash;
      case 1:
        return CardType.bank;
      case 2:
        return CardType.wallet;
      default:
        return CardType.cash;
    }
  }

  @override
  void write(BinaryWriter writer, CardType obj) {
    switch (obj) {
      case CardType.cash:
        writer.writeByte(0);
        break;
      case CardType.bank:
        writer.writeByte(1);
        break;
      case CardType.wallet:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
