// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Products> {
  @override
  final int typeId = 0;

  @override
  Products read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Products(
      name: fields[2] as TitleName,
      id: fields[0] as String,
      price: fields[1] as double,
      image: fields[5] as String,
      quantity: fields[3] as int,
      modifiers: (fields[4] as List).cast<Modifiers>(),
      uniqueId: fields[6] as String,
      discounts: fields[9] as double,
      combos: (fields[7] as List).cast<HiveCombo>(),
      type: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Products obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.modifiers)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.uniqueId)
      ..writeByte(7)
      ..write(obj.combos)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
      ..write(obj.discounts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ModifierAdapter extends TypeAdapter<Modifiers> {
  @override
  final int typeId = 1;

  @override
  Modifiers read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Modifiers(
      nameModifier: fields[1] as TitleName,
      idModifier: fields[0] as String,
      quantityModifier: fields[2] as int,
      idParent: fields[4] as String,
      priceModifiers: fields[3] as int,
      addPriceModifier: fields[5] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Modifiers obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.idModifier)
      ..writeByte(1)
      ..write(obj.nameModifier)
      ..writeByte(2)
      ..write(obj.quantityModifier)
      ..writeByte(3)
      ..write(obj.priceModifiers)
      ..writeByte(4)
      ..write(obj.idParent)
      ..writeByte(5)
      ..write(obj.addPriceModifier);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModifierAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ComboAdapter extends TypeAdapter<HiveCombo> {
  @override
  final int typeId = 2;

  @override
  HiveCombo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCombo(
      idGroup: fields[0] as String,
      idVariant: fields[1] as String,
      variantName: fields[2] as TitleName,
      quantity: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveCombo obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.idGroup)
      ..writeByte(1)
      ..write(obj.idVariant)
      ..writeByte(2)
      ..write(obj.variantName)
      ..writeByte(3)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComboAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TitleNameAdapter extends TypeAdapter<TitleName> {
  @override
  final int typeId = 3;

  @override
  TitleName read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TitleName(
      uz: fields[0] as String,
      ru: fields[1] as String,
      en: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TitleName obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.uz)
      ..writeByte(1)
      ..write(obj.ru)
      ..writeByte(2)
      ..write(obj.en);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TitleNameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
