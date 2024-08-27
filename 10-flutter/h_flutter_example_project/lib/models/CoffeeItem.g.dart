// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CoffeeItem.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoffeeItemAdapter extends TypeAdapter<CoffeeItem> {
  @override
  final int typeId = 0;

  @override
  CoffeeItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffeeItem(
      title: fields[0] as String?,
      description: fields[1] as String?,
      ingredients: (fields[2] as List?)?.cast<String>(),
      image: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CoffeeItem obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.ingredients)
      ..writeByte(3)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffeeItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
