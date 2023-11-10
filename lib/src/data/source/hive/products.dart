import 'package:hive/hive.dart';

part 'products.g.dart';

@HiveType(typeId: 0, adapterName: 'ProductAdapter')
class Products extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  double price;
  @HiveField(2)
  TitleName name;
  @HiveField(3)
  int quantity;
  @HiveField(4)
  List<Modifiers> modifiers;
  @HiveField(5)
  String image;
  @HiveField(6)
  String uniqueId;
  @HiveField(7)
  List<HiveCombo> combos;
  @HiveField(8)
  String? type;
  @HiveField(9)
  double discounts;

  Products({
    required this.name,
    required this.id,
    required this.price,
    required this.image,
    required this.quantity,
    required this.modifiers,
    required this.uniqueId,
    this.discounts = 0,
    required this.combos,
    required this.type,
  });

  double receiveAllPrice() {
    double pricesModifiers = 0;
    for (int i = 0; i < (modifiers).length; i++) {
      pricesModifiers += ((modifiers[i].addPriceModifier ?? true) ? 0 : (modifiers[i].priceModifiers)) *
          (modifiers[i].quantityModifier);
    }
    return pricesModifiers + ((price + discounts) * quantity);
  }
}

@HiveType(typeId: 1, adapterName: 'ModifierAdapter')
class Modifiers extends HiveObject {
  @HiveField(0)
  String idModifier;
  @HiveField(1)
  TitleName nameModifier;
  @HiveField(2)
  int quantityModifier;
  @HiveField(3)
  int priceModifiers;
  @HiveField(4)
  String idParent;
  @HiveField(5)
  bool? addPriceModifier;

  Modifiers({
    required this.nameModifier,
    required this.idModifier,
    required this.quantityModifier,
    required this.idParent,
    required this.priceModifiers,
    this.addPriceModifier = true,
  });

  @override
  String toString() {
    return 'Modifiers{modifierId: $idModifier, modifierName: $nameModifier, modifierQuantity: $quantityModifier, modifiersPrice: $priceModifiers, parentId: $idParent, addModifierPrice: $addPriceModifier}';
  }
}

@HiveType(typeId: 2, adapterName: 'ComboAdapter')
class HiveCombo extends HiveObject {
  @HiveField(0)
  String idGroup;
  @HiveField(1)
  String idVariant;
  @HiveField(2)
  TitleName variantName;
  @HiveField(3)
  int quantity;

  HiveCombo({
   required this.idGroup,
   required this.idVariant,
   required this.variantName,
   required this.quantity,
});
}


@HiveType(typeId: 3, adapterName: 'TitleNameAdapter')
class TitleName extends HiveObject {
  @HiveField(0)
  String uz;
  @HiveField(1)
  String ru;
  @HiveField(2)
  String en;

  TitleName({
    required this.uz,
    required this.ru,
    required this.en,
});
}