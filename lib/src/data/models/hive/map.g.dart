// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MapLocaleAdapter extends TypeAdapter<MapLocale> {
  @override
  final int typeId = 2;

  @override
  MapLocale read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapLocale(
      lat: fields[0] as double,
      long: fields[1] as double,
      addressName: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MapLocale obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.lat)
      ..writeByte(1)
      ..write(obj.long)
      ..writeByte(2)
      ..write(obj.addressName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapLocaleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
