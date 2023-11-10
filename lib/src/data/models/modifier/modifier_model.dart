import 'package:ploff_kebab/src/data/models/other_models/category_name_model.dart';
import 'package:ploff_kebab/src/data/models/other_models/description_model.dart';
import 'package:ploff_kebab/src/data/models/other_models/name_model.dart';
import 'package:ploff_kebab/src/data/models/title/title.dart';

class ModifierModel {
  ModifierModel({
      this.productModifiers, 
      this.count});

  ModifierModel.fromJson(dynamic json) {
    productModifiers = json['product_modifiers'] != null ? ProductModifiers.fromJson(json['product_modifiers']) : null;
    count = json['count'];
  }
  ProductModifiers? productModifiers;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (productModifiers != null) {
      map['product_modifiers'] = productModifiers?.toJson();
    }
    map['count'] = count;
    return map;
  }

}

class ProductModifiers {
  ProductModifiers({
      this.singleModifiers, 
      this.groupModifiers,});

  ProductModifiers.fromJson(dynamic json) {
    if (json['single_modifiers'] != null) {
      singleModifiers = [];
      json['single_modifiers'].forEach((v) {
        singleModifiers?.add(SingleModifiers.fromJson(v));
      });
    }
    if (json['group_modifiers'] != null) {
      groupModifiers = [];
      json['group_modifiers'].forEach((v) {
        groupModifiers?.add(GroupModifiers.fromJson(v));
      });
    }
  }
  List<SingleModifiers>? singleModifiers;
  List<GroupModifiers>? groupModifiers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (singleModifiers != null) {
      map['single_modifiers'] = singleModifiers?.map((v) => v.toJson()).toList();
    }
    if (groupModifiers != null) {
      map['group_modifiers'] = groupModifiers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class GroupModifiers {
  GroupModifiers({
      this.id, 
      this.type, 
      this.fromProductId, 
      this.toProductId, 
      this.active, 
      this.order, 
      this.createdAt, 
      this.shipperId, 
      this.minAmount, 
      this.maxAmount, 
      this.isCompulsory, 
      this.isCheckbox, 
      this.addToPrice, 
      this.name, 
      this.categoryName, 
      this.price, 
      this.code, 
      this.variants,});

  GroupModifiers.fromJson(dynamic json) {
    id = json['id'];
    type = json['type'];
    fromProductId = json['from_product_id'];
    toProductId = json['to_product_id'];
    active = json['active'];
    order = json['order'];
    createdAt = json['created_at'];
    shipperId = json['shipper_id'];
    minAmount = json['min_amount'];
    maxAmount = json['max_amount'];
    isCompulsory = json['is_compulsory'];
    isCheckbox = json['is_checkbox'];
    addToPrice = json['add_to_price'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    categoryName = json['category_name'] != null ? CategoryNameModel.fromJson(json['category_name']) : null;
    price = json['price'];
    code = json['code'];
    if (json['variants'] != null) {
      variants = [];
      json['variants'].forEach((v) {
        variants?.add(Variants.fromJson(v));
      });
    }
  }
  String? id;
  String? type;
  String? fromProductId;
  String? toProductId;
  bool? active;
  String? order;
  String? createdAt;
  String? shipperId;
  int? minAmount;
  int? maxAmount;
  bool? isCompulsory;
  bool? isCheckbox;
  bool? addToPrice;
  NameModel? name;
  CategoryNameModel? categoryName;
  String? price;
  String? code;
  List<Variants>? variants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['from_product_id'] = fromProductId;
    map['to_product_id'] = toProductId;
    map['active'] = active;
    map['order'] = order;
    map['created_at'] = createdAt;
    map['shipper_id'] = shipperId;
    map['min_amount'] = minAmount;
    map['max_amount'] = maxAmount;
    map['is_compulsory'] = isCompulsory;
    map['is_checkbox'] = isCheckbox;
    map['add_to_price'] = addToPrice;
    if (name != null) {
      map['name'] = name?.toJson();
    }
    if (categoryName != null) {
      map['category_name'] = categoryName?.toJson();
    }
    map['price'] = price;
    map['code'] = code;
    if (variants != null) {
      map['variants'] = variants?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Variants {
  Variants({
      this.isDivisible, 
      this.inPrice, 
      this.outPrice, 
      this.currency, 
      this.orderNo, 
      this.count, 
      this.id, 
      this.brandId, 
      this.measurement, 
      this.rateId, 
      this.image, 
      this.categoryIds, 
      this.tagIds, 
      this.gallery, 
      this.propertyGroups, 
      this.comboIds, 
      this.title, 
      this.description,});

  Variants.fromJson(dynamic json) {
    isDivisible = json['is_divisible'];
    inPrice = json['in_price'];
    outPrice = json['out_price'];
    currency = json['currency'];
    orderNo = json['order_no'];
    count = json['count'];
    id = json['id'];
    brandId = json['brand_id'];
    measurement = json['measurement'];
    rateId = json['rate_id'];
    image = json['image'];
    categoryIds = json['category_ids'];
    tagIds = json['tag_ids'];
    gallery = json['gallery'];
    propertyGroups = json['property_groups'];
    comboIds = json['combo_ids'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
  }
  bool? isDivisible;
  int? inPrice;
  int? outPrice;
  String? currency;
  String? orderNo;
  String? count;
  String? id;
  String? brandId;
  String? measurement;
  String? rateId;
  String? image;
  dynamic categoryIds;
  dynamic tagIds;
  dynamic gallery;
  dynamic propertyGroups;
  dynamic comboIds;
  TitleModel? title;
  DescriptionModel? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_divisible'] = isDivisible;
    map['in_price'] = inPrice;
    map['out_price'] = outPrice;
    map['currency'] = currency;
    map['order_no'] = orderNo;
    map['count'] = count;
    map['id'] = id;
    map['brand_id'] = brandId;
    map['measurement'] = measurement;
    map['rate_id'] = rateId;
    map['image'] = image;
    map['category_ids'] = categoryIds;
    map['tag_ids'] = tagIds;
    map['gallery'] = gallery;
    map['property_groups'] = propertyGroups;
    map['combo_ids'] = comboIds;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    if (description != null) {
      map['description'] = description?.toJson();
    }
    return map;
  }

}

class Description {
  Description({
      this.uz, 
      this.ru, 
      this.en,});

  Description.fromJson(dynamic json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }
  String? uz;
  String? ru;
  String? en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }

}





class SingleModifiers {
  SingleModifiers({
      this.id, 
      this.type, 
      this.fromProductId, 
      this.toProductId, 
      this.active, 
      this.order, 
      this.createdAt, 
      this.shipperId, 
      this.minAmount, 
      this.maxAmount, 
      this.isCompulsory, 
      this.isCheckbox, 
      this.addToPrice, 
      this.name, 
      this.categoryName, 
      this.price, 
      this.code, 
      this.variants,});

  SingleModifiers.fromJson(dynamic json) {
    id = json['id'];
    type = json['type'];
    fromProductId = json['from_product_id'];
    toProductId = json['to_product_id'];
    active = json['active'];
    order = json['order'];
    createdAt = json['created_at'];
    shipperId = json['shipper_id'];
    minAmount = json['min_amount'];
    maxAmount = json['max_amount'];
    isCompulsory = json['is_compulsory'];
    isCheckbox = json['is_checkbox'];
    addToPrice = json['add_to_price'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
    categoryName = json['category_name'] != null ? CategoryNameModel.fromJson(json['category_name']) : null;
    price = json['price'];
    code = json['code'];
    variants = json['variants'];
  }
  String? id;
  String? type;
  String? fromProductId;
  String? toProductId;
  bool? active;
  String? order;
  String? createdAt;
  String? shipperId;
  int? minAmount;
  int? maxAmount;
  bool? isCompulsory;
  bool? isCheckbox;
  bool? addToPrice;
  NameModel? name;
  CategoryNameModel? categoryName;
  String? price;
  String? code;
  dynamic variants;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['from_product_id'] = fromProductId;
    map['to_product_id'] = toProductId;
    map['active'] = active;
    map['order'] = order;
    map['created_at'] = createdAt;
    map['shipper_id'] = shipperId;
    map['min_amount'] = minAmount;
    map['max_amount'] = maxAmount;
    map['is_compulsory'] = isCompulsory;
    map['is_checkbox'] = isCheckbox;
    map['add_to_price'] = addToPrice;
    if (name != null) {
      map['name'] = name?.toJson();
    }
    if (categoryName != null) {
      map['category_name'] = categoryName?.toJson();
    }
    map['price'] = price;
    map['code'] = code;
    map['variants'] = variants;
    return map;
  }

}


