import 'package:ploff_kebab/src/data/models/title/title.dart';

class ProductIdResponse {
  ProductIdResponse({
      this.products, 
      this.count,});

  ProductIdResponse.fromJson(dynamic json) {
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(ProductsSimple.fromJson(v));
      });
    }
    count = json['count'];
  }
  List<ProductsSimple>? products;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }

}

class ProductsSimple {
  ProductsSimple({
      this.active, 
      this.isDivisible, 
      this.hasModifier, 
      this.order, 
      this.inPrice, 
      this.outPrice, 
      this.currency, 
      this.count, 
      this.id, 
      this.slug, 
      this.image, 
      this.code, 
      this.gallery, 
      this.iikoId, 
      this.jowiId, 
      this.description, 
      this.title, 
      this.brand, 
      this.rate, 
      this.activeInMenu, 
      this.fromTime, 
      this.toTime, 
      this.offAlways, 
      this.favorites, 
      this.categories, 
      this.tags, 
      this.productProperty, 
      this.properties, 
      this.variantProducts, 
      this.type, 
      this.addToOrder, 
      this.defaultQuantity,});

  ProductsSimple.fromJson(dynamic json) {
    active = json['active'];
    isDivisible = json['is_divisible'];
    hasModifier = json['has_modifier'];
    order = json['order'];
    inPrice = json['in_price'];
    outPrice = json['out_price'];
    currency = json['currency'];
    count = json['count'];
    id = json['id'];
    slug = json['slug'];
    image = json['image'];
    code = json['code'];
    gallery = json['gallery'];
    iikoId = json['iiko_id'];
    jowiId = json['jowi_id'];
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    rate = json['rate'] != null ? Rate.fromJson(json['rate']) : null;
    activeInMenu = json['active_in_menu'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
    offAlways = json['off_always'];
    favorites = json['favorites'];
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    tags = json['tags'];
    productProperty = json['product_property'];
    properties = json['properties'];
    variantProducts = json['variant_products'];
    type = json['type'];
    addToOrder = json['add_to_order'];
    defaultQuantity = json['default_quantity'];
  }
  bool? active;
  bool? isDivisible;
  bool? hasModifier;
  String? order;
  int? inPrice;
  int? outPrice;
  String? currency;
  String? count;
  String? id;
  String? slug;
  String? image;
  String? code;
  dynamic gallery;
  String? iikoId;
  String? jowiId;
  Description? description;
  TitleModel? title;
  Brand? brand;
  Rate? rate;
  bool? activeInMenu;
  String? fromTime;
  String? toTime;
  bool? offAlways;
  dynamic favorites;
  List<Categories>? categories;
  dynamic tags;
  dynamic productProperty;
  dynamic properties;
  dynamic variantProducts;
  String? type;
  bool? addToOrder;
  int? defaultQuantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = active;
    map['is_divisible'] = isDivisible;
    map['has_modifier'] = hasModifier;
    map['order'] = order;
    map['in_price'] = inPrice;
    map['out_price'] = outPrice;
    map['currency'] = currency;
    map['count'] = count;
    map['id'] = id;
    map['slug'] = slug;
    map['image'] = image;
    map['code'] = code;
    map['gallery'] = gallery;
    map['iiko_id'] = iikoId;
    map['jowi_id'] = jowiId;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (title != null) {
      map['title'] = title?.toJson();
    }
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    if (rate != null) {
      map['rate'] = rate?.toJson();
    }
    map['active_in_menu'] = activeInMenu;
    map['from_time'] = fromTime;
    map['to_time'] = toTime;
    map['off_always'] = offAlways;
    map['favorites'] = favorites;
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    map['tags'] = tags;
    map['product_property'] = productProperty;
    map['properties'] = properties;
    map['variant_products'] = variantProducts;
    map['type'] = type;
    map['add_to_order'] = addToOrder;
    map['default_quantity'] = defaultQuantity;
    return map;
  }

}

class Categories {
  Categories({
      this.id, 
      this.slug, 
      this.parentId, 
      this.image, 
      this.description, 
      this.title, 
      this.orderNo, 
      this.active, 
      this.products, 
      this.childCategories,});

  Categories.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    parentId = json['parent_id'];
    image = json['image'];
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    orderNo = json['order_no'];
    active = json['active'];
    products = json['products'];
    childCategories = json['child_categories'];
  }
  String? id;
  String? slug;
  String? parentId;
  String? image;
  Description? description;
  TitleModel? title;
  String? orderNo;
  bool? active;
  dynamic products;
  dynamic childCategories;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['parent_id'] = parentId;
    map['image'] = image;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['order_no'] = orderNo;
    map['active'] = active;
    map['products'] = products;
    map['child_categories'] = childCategories;
    return map;
  }

}

class Title {
  Title({
      this.uz, 
      this.ru, 
      this.en,});

  Title.fromJson(dynamic json) {
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

class Rate {
  Rate({
      this.id, 
      this.slug, 
      this.code, 
      this.rateAmount, 
      this.title,});

  Rate.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    code = json['code'];
    rateAmount = json['rate_amount'];
    title = json['title'];
  }
  String? id;
  String? slug;
  String? code;
  String? rateAmount;
  String? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['code'] = code;
    map['rate_amount'] = rateAmount;
    map['title'] = title;
    return map;
  }

}

class Brand {
  Brand({
      this.id, 
      this.slug, 
      this.parentId, 
      this.image, 
      this.description, 
      this.title, 
      this.orderNo, 
      this.isActive,});

  Brand.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    parentId = json['parent_id'];
    image = json['image'];
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    orderNo = json['order_no'];
    isActive = json['is_active'];
  }
  String? id;
  String? slug;
  String? parentId;
  String? image;
  Description? description;
  TitleModel? title;
  String? orderNo;
  bool? isActive;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    map['parent_id'] = parentId;
    map['image'] = image;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['order_no'] = orderNo;
    map['is_active'] = isActive;
    return map;
  }

}





