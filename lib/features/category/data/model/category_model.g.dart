// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryModelAdapter extends TypeAdapter<CategoryModel> {
  @override
  final int typeId = 1;

  @override
  CategoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryModel(
      icon: fields[2] as int?,
      name: fields[0] as String?,
      color: fields[8] == null ? 4294951175 : fields[8] as int?,
      isDefault: fields[3] == null ? false : fields[3] as bool?,
      description: fields[1] as String?,
      isBudget: fields[7] == null ? false : fields[7] as bool?,
      budget: fields[6] == null ? 0 : fields[6] as double?,
      superId: fields[4] == null ? 0 : fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(6)
      ..write(obj.budget)
      ..writeByte(8)
      ..write(obj.color)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.icon)
      ..writeByte(7)
      ..write(obj.isBudget)
      ..writeByte(3)
      ..write(obj.isDefault)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.superId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
