import 'package:ploff_kebab/src/data/models/other_models/description_model.dart';
import 'package:ploff_kebab/src/data/models/other_models/discounts_model.dart';
import 'package:ploff_kebab/src/data/models/other_models/option_models.dart';
import 'package:ploff_kebab/src/data/models/other_models/product_property_model.dart';
import 'package:ploff_kebab/src/data/models/title/title.dart';

class ProductResponseWithId {
  ProductResponseWithId({
      this.active,
      this.activeInMenu,
      this.addToOrder,
      this.brand,
      this.categories,
      this.code,
      this.count,
      this.currency,
      this.defaultQuantity,
      this.description,
      this.favorites,
      this.fromTime,
      this.gallery,
      this.hasModifier,
      this.id,
      this.iikoId,
      this.image,
      this.inPrice,
      this.isDivisible,
      this.jowiId,
      this.offAlways,
      this.order,
      this.outPrice,
      this.productProperty,
      this.properties,
      this.rate,
      this.slug,
      this.tags,
      this.title,
      this.toTime,
      this.type,
      this.variantProducts,});

  ProductResponseWithId.fromJson(dynamic json) {
    active = json['active'];
    activeInMenu = json['active_in_menu'];
    addToOrder = json['add_to_order'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    code = json['code'];
    count = json['count'];
    currency = json['currency'];
    defaultQuantity = json['default_quantity'];
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
    if (json['favorites'] != null) {
      favorites = [];
      json['favorites'].forEach((v) {
        favorites?.add(Favorites.fromJson(v));
      });
    }
    fromTime = json['from_time'];
    gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    hasModifier = json['has_modifier'];
    id = json['id'];
    iikoId = json['iiko_id'];
    image = json['image'];
    inPrice = json['in_price'];
    isDivisible = json['is_divisible'];
    jowiId = json['jowi_id'];
    offAlways = json['off_always'];
    order = json['order'];
    outPrice = json['out_price'];
    if (json['product_property'] != null) {
      productProperty = [];
      json['product_property'].forEach((v) {
        productProperty?.add(ProductProperty.fromJson(v));
      });
    }
    if (json['properties'] != null) {
      properties = [];
      json['properties'].forEach((v) {
        properties?.add(Properties.fromJson(v));
      });
    }
    rate = json['rate'] != null ? Rate.fromJson(json['rate']) : null;
    slug = json['slug'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    toTime = json['to_time'];
    type = json['type'];
    if (json['variant_products'] != null) {
      variantProducts = [];
      json['variant_products'].forEach((v) {
        variantProducts?.add(VariantProducts.fromJson(v));
      });
    }
  }
  bool? active;
  bool? activeInMenu;
  bool? addToOrder;
  Brand? brand;
  List<Categories>? categories;
  String? code;
  String? count;
  String? currency;
  int? defaultQuantity;
  DescriptionModel? description;
  List<Favorites>? favorites;
  String? fromTime;
  List<String>? gallery;
  bool? hasModifier;
  String? id;
  String? iikoId;
  String? image;
  int? inPrice;
  bool? isDivisible;
  String? jowiId;
  bool? offAlways;
  String? order;
  int? outPrice;
  List<ProductProperty>? productProperty;
  List<Properties>? properties;
  Rate? rate;
  String? slug;
  List<Tags>? tags;
  TitleModel? title;
  String? toTime;
  String? type;
  List<VariantProducts>? variantProducts;

  ProductResponseWithId copyWith(int isPrice, {
    bool? active,
    bool? activeInMenu,
    bool? addToOrder,
    Brand? brand,
    List<Categories>? categories,
    String? code,
    String? count,
    String? currency,
    int? defaultQuantity,
    DescriptionModel? description,
    List<Favorites>? favorites,
    String? fromTime,
    List<String>? gallery,
    bool? hasModifier,
    String? id,
    String? iikoId,
    String? image,
    int? inPrice,
    bool? isDivisible,
    String? jowiId,
    bool? offAlways,
    String? order,
    int? outPrice,
    List<ProductProperty>? productProperty,
    List<Properties>? properties,
    Rate? rate,
    String? slug,
    List<Tags>? tags,
    TitleModel? title,
    String? toTime,
    String? type,
    List<VariantProducts>? variantProducts,
  }) {
    return ProductResponseWithId(
      id: id ?? id,
      slug: slug ?? slug,
      title: title ?? title,
      code: code ?? code,
      description: description ?? description,
      categories: categories ?? categories,
      isDivisible: isDivisible ?? isDivisible,
      count: count ?? count,
      tags: tags ?? tags,
      rate: rate ?? rate,
      inPrice: inPrice ?? inPrice,
      outPrice: outPrice ?? outPrice,
      image: image ?? image,
      gallery: gallery ?? gallery,
      active: active ?? active,
      order: order ?? order,
      iikoId: iikoId ?? iikoId,
      jowiId: jowiId ?? jowiId,
      currency: currency ?? currency,
      type: type ?? type,
      properties: properties ?? properties,
      activeInMenu: activeInMenu ?? activeInMenu,
      offAlways: offAlways ?? offAlways,
      fromTime: fromTime ?? fromTime,
      toTime: toTime ?? toTime,
      hasModifier: hasModifier ?? hasModifier,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = active;
    map['active_in_menu'] = activeInMenu;
    map['add_to_order'] = addToOrder;
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    map['code'] = code;
    map['count'] = count;
    map['currency'] = currency;
    map['default_quantity'] = defaultQuantity;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (favorites != null) {
      map['favorites'] = favorites?.map((v) => v.toJson()).toList();
    }
    map['from_time'] = fromTime;
    map['gallery'] = gallery;
    map['has_modifier'] = hasModifier;
    map['id'] = id;
    map['iiko_id'] = iikoId;
    map['image'] = image;
    map['in_price'] = inPrice;
    map['is_divisible'] = isDivisible;
    map['jowi_id'] = jowiId;
    map['off_always'] = offAlways;
    map['order'] = order;
    map['out_price'] = outPrice;
    if (productProperty != null) {
      map['product_property'] = productProperty?.map((v) => v.toJson()).toList();
    }
    if (properties != null) {
      map['properties'] = properties?.map((v) => v.toJson()).toList();
    }
    if (rate != null) {
      map['rate'] = rate?.toJson();
    }
    map['slug'] = slug;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['to_time'] = toTime;
    map['type'] = type;
    if (variantProducts != null) {
      map['variant_products'] = variantProducts?.map((v) => v.toJson()).toList();
    }
    return map;
  }


}

class VariantProducts {
  VariantProducts({
      this.active, 
      this.brandId, 
      this.categories, 
      this.count, 
      this.currency, 
      this.description, 
      this.discounts, 
      this.favourites, 
      this.gallery, 
      this.hasModifier, 
      this.id, 
      this.iikoId, 
      this.image, 
      this.inPrice, 
      this.isDivisible, 
      this.jowiId, 
      this.measurement, 
      this.order, 
      this.outPrice, 
      this.parentId, 
      this.productProperty, 
      this.propertyIds, 
      this.rateId, 
      this.relationType, 
      this.string, 
      this.tags, 
      this.title, 
      this.type,});

  VariantProducts.fromJson(dynamic json) {
    active = json['active'];
    brandId = json['brand_id'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    count = json['count'];
    currency = json['currency'];
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
    if (json['discounts'] != null) {
      discounts = [];
      json['discounts'].forEach((v) {
        discounts?.add(DiscountsModel.fromJson(v));
      });
    }
    favourites = json['favourites'] != null ? json['favourites'].cast<String>() : [];
    gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    hasModifier = json['has_modifier'];
    id = json['id'];
    iikoId = json['iiko_id'];
    image = json['image'];
    inPrice = json['in_price'];
    isDivisible = json['is_divisible'];
    jowiId = json['jowi_id'];
    measurement = json['measurement'];
    order = json['order'];
    outPrice = json['out_price'];
    parentId = json['parent_id'];
    if (json['product_property'] != null) {
      productProperty = [];
      json['product_property'].forEach((v) {
        productProperty?.add(ProductProperty.fromJson(v));
      });
    }
    propertyIds = json['property_ids'] != null ? json['property_ids'].cast<String>() : [];
    rateId = json['rate_id'];
    relationType = json['relation_type'];
    string = json['string'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    type = json['type'];
  }
  bool? active;
  String? brandId;
  List<String>? categories;
  String? count;
  String? currency;
  DescriptionModel? description;
  List<DiscountsModel>? discounts;
  List<String>? favourites;
  List<String>? gallery;
  bool? hasModifier;
  String? id;
  String? iikoId;
  String? image;
  int? inPrice;
  bool? isDivisible;
  String? jowiId;
  String? measurement;
  String? order;
  int? outPrice;
  String? parentId;
  List<ProductProperty>? productProperty;
  List<String>? propertyIds;
  String? rateId;
  String? relationType;
  String? string;
  List<String>? tags;
  TitleModel? title;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = active;
    map['brand_id'] = brandId;
    map['categories'] = categories;
    map['count'] = count;
    map['currency'] = currency;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (discounts != null) {
      map['discounts'] = discounts?.map((v) => v.toJson()).toList();
    }
    map['favourites'] = favourites;
    map['gallery'] = gallery;
    map['has_modifier'] = hasModifier;
    map['id'] = id;
    map['iiko_id'] = iikoId;
    map['image'] = image;
    map['in_price'] = inPrice;
    map['is_divisible'] = isDivisible;
    map['jowi_id'] = jowiId;
    map['measurement'] = measurement;
    map['order'] = order;
    map['out_price'] = outPrice;
    map['parent_id'] = parentId;
    if (productProperty != null) {
      map['product_property'] = productProperty?.map((v) => v.toJson()).toList();
    }
    map['property_ids'] = propertyIds;
    map['rate_id'] = rateId;
    map['relation_type'] = relationType;
    map['string'] = string;
    map['tags'] = tags;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['type'] = type;
    return map;
  }

}


class ProductProperty {
  ProductProperty({
      this.optionId, 
      this.propertyId, 
      this.title,});

  ProductProperty.fromJson(dynamic json) {
    optionId = json['option_id'];
    propertyId = json['property_id'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
  }
  String? optionId;
  String? propertyId;
  TitleModel? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['option_id'] = optionId;
    map['property_id'] = propertyId;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    return map;
  }

}



class Name {
  Name({
      this.en,
      this.ru,
      this.uz,});

  Name.fromJson(dynamic json) {
    en = json['en'];
    ru = json['ru'];
    uz = json['uz'];
  }
  String? en;
  String? ru;
  String? uz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = en;
    map['ru'] = ru;
    map['uz'] = uz;
    return map;
  }

}


// class Title {
//   Title({
//       this.en,
//       this.ru,
//       this.uz,});
//
//   Title.fromJson(dynamic json) {
//     en = json['en'];
//     ru = json['ru'];
//     uz = json['uz'];
//   }
//   String? en;
//   String? ru;
//   String? uz;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['en'] = en;
//     map['ru'] = ru;
//     map['uz'] = uz;
//     return map;
//   }
//
// }

class Tags {
  Tags({
      this.color, 
      this.icon, 
      this.id, 
      this.slug, 
      this.title,});

  Tags.fromJson(dynamic json) {
    color = json['color'];
    icon = json['icon'];
    id = json['id'];
    slug = json['slug'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
  }
  String? color;
  String? icon;
  String? id;
  String? slug;
  TitleModel? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['color'] = color;
    map['icon'] = icon;
    map['id'] = id;
    map['slug'] = slug;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    return map;
  }

}

// class Title {
//   Title({
//       this.en,
//       this.ru,
//       this.uz,});
//
//   Title.fromJson(dynamic json) {
//     en = json['en'];
//     ru = json['ru'];
//     uz = json['uz'];
//   }
//   String? en;
//   String? ru;
//   String? uz;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['en'] = en;
//     map['ru'] = ru;
//     map['uz'] = uz;
//     return map;
//   }
//
// }

class Rate {
  Rate({
      this.code, 
      this.id, 
      this.rateAmount, 
      this.slug, 
      this.title,});

  Rate.fromJson(dynamic json) {
    code = json['code'];
    id = json['id'];
    rateAmount = json['rate_amount'];
    slug = json['slug'];
    title = json['title'];
  }
  String? code;
  String? id;
  String? rateAmount;
  String? slug;
  String? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['id'] = id;
    map['rate_amount'] = rateAmount;
    map['slug'] = slug;
    map['title'] = title;
    return map;
  }

}

class Properties {
  Properties({
      this.active, 
      this.createdAt, 
      this.description, 
      this.id, 
      this.options, 
      this.orderNo, 
      this.shipperId, 
      this.slug, 
      this.title,});

  Properties.fromJson(dynamic json) {
    active = json['active'];
    createdAt = json['created_at'];
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
    id = json['id'];
    if (json['options'] != null) {
      options = [];
      json['options'].forEach((v) {
        options?.add(OptionsModel.fromJson(v));
      });
    }
    orderNo = json['order_no'];
    shipperId = json['shipper_id'];
    slug = json['slug'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
  }
  bool? active;
  String? createdAt;
  DescriptionModel? description;
  String? id;
  List<OptionsModel>? options;
  String? orderNo;
  String? shipperId;
  String? slug;
  TitleModel? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = active;
    map['created_at'] = createdAt;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    map['id'] = id;
    if (options != null) {
      map['options'] = options?.map((v) => v.toJson()).toList();
    }
    map['order_no'] = orderNo;
    map['shipper_id'] = shipperId;
    map['slug'] = slug;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    return map;
  }

}

// class Title {
//   Title({
//       this.en,
//       this.ru,
//       this.uz,});
//
//   Title.fromJson(dynamic json) {
//     en = json['en'];
//     ru = json['ru'];
//     uz = json['uz'];
//   }
//   String? en;
//   String? ru;
//   String? uz;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['en'] = en;
//     map['ru'] = ru;
//     map['uz'] = uz;
//     return map;
//   }
//
// }


// class Title {
//   Title({
//       this.en,
//       this.ru,
//       this.uz,});
//
//   Title.fromJson(dynamic json) {
//     en = json['en'];
//     ru = json['ru'];
//     uz = json['uz'];
//   }
//   String? en;
//   String? ru;
//   String? uz;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['en'] = en;
//     map['ru'] = ru;
//     map['uz'] = uz;
//     return map;
//   }
//
// }

// class Description {
//   Description({
//       this.en,
//       this.ru,
//       this.uz,});
//
//   Description.fromJson(dynamic json) {
//     en = json['en'];
//     ru = json['ru'];
//     uz = json['uz'];
//   }
//   String? en;
//   String? ru;
//   String? uz;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['en'] = en;
//     map['ru'] = ru;
//     map['uz'] = uz;
//     return map;
//   }
//
// }



// class Title {
//   Title({
//       this.en,
//       this.ru,
//       this.uz,});
//
//   Title.fromJson(dynamic json) {
//     en = json['en'];
//     ru = json['ru'];
//     uz = json['uz'];
//   }
//   String? en;
//   String? ru;
//   String? uz;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['en'] = en;
//     map['ru'] = ru;
//     map['uz'] = uz;
//     return map;
//   }
//
// }

class Favorites {
  Favorites({
      this.active, 
      this.brandId, 
      this.categories, 
      this.count, 
      this.currency, 
      this.description, 
      this.discounts, 
      this.favourites, 
      this.gallery, 
      this.hasModifier, 
      this.id, 
      this.iikoId, 
      this.image, 
      this.inPrice, 
      this.isDivisible, 
      this.jowiId, 
      this.measurement, 
      this.order, 
      this.outPrice, 
      this.parentId, 
      this.productProperty, 
      this.propertyIds, 
      this.rateId, 
      this.relationType, 
      this.string, 
      this.tags, 
      this.title, 
      this.type,});

  Favorites.fromJson(dynamic json) {
    active = json['active'];
    brandId = json['brand_id'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    count = json['count'];
    currency = json['currency'];
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
    if (json['discounts'] != null) {
      discounts = [];
      json['discounts'].forEach((v) {
        discounts?.add(DiscountsModel.fromJson(v));
      });
    }
    favourites = json['favourites'] != null ? json['favourites'].cast<String>() : [];
    gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    hasModifier = json['has_modifier'];
    id = json['id'];
    iikoId = json['iiko_id'];
    image = json['image'];
    inPrice = json['in_price'];
    isDivisible = json['is_divisible'];
    jowiId = json['jowi_id'];
    measurement = json['measurement'];
    order = json['order'];
    outPrice = json['out_price'];
    parentId = json['parent_id'];
    if (json['product_property'] != null) {
      productProperty = [];
      json['product_property'].forEach((v) {
        productProperty?.add(ProductPropertyModel.fromJson(v));
      });
    }
    propertyIds = json['property_ids'] != null ? json['property_ids'].cast<String>() : [];
    rateId = json['rate_id'];
    relationType = json['relation_type'];
    string = json['string'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    type = json['type'];
  }
  bool? active;
  String? brandId;
  List<String>? categories;
  String? count;
  String? currency;
  DescriptionModel? description;
  List<DiscountsModel>? discounts;
  List<String>? favourites;
  List<String>? gallery;
  bool? hasModifier;
  String? id;
  String? iikoId;
  String? image;
  int? inPrice;
  bool? isDivisible;
  String? jowiId;
  String? measurement;
  String? order;
  int? outPrice;
  String? parentId;
  List<ProductPropertyModel>? productProperty;
  List<String>? propertyIds;
  String? rateId;
  String? relationType;
  String? string;
  List<String>? tags;
  TitleModel? title;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = active;
    map['brand_id'] = brandId;
    map['categories'] = categories;
    map['count'] = count;
    map['currency'] = currency;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (discounts != null) {
      map['discounts'] = discounts?.map((v) => v.toJson()).toList();
    }
    map['favourites'] = favourites;
    map['gallery'] = gallery;
    map['has_modifier'] = hasModifier;
    map['id'] = id;
    map['iiko_id'] = iikoId;
    map['image'] = image;
    map['in_price'] = inPrice;
    map['is_divisible'] = isDivisible;
    map['jowi_id'] = jowiId;
    map['measurement'] = measurement;
    map['order'] = order;
    map['out_price'] = outPrice;
    map['parent_id'] = parentId;
    if (productProperty != null) {
      map['product_property'] = productProperty?.map((v) => v.toJson()).toList();
    }
    map['property_ids'] = propertyIds;
    map['rate_id'] = rateId;
    map['relation_type'] = relationType;
    map['string'] = string;
    map['tags'] = tags;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['type'] = type;
    return map;
  }

}



class Categories {
  Categories({
      this.active, 
      this.childCategories, 
      this.description, 
      this.id, 
      this.image, 
      this.orderNo, 
      this.parentId, 
      this.products, 
      this.slug, 
      this.title,});

  Categories.fromJson(dynamic json) {
    active = json['active'];
    if (json['child_categories'] != null) {
      childCategories = [];
      json['child_categories'].forEach((v) {
        childCategories?.add(ChildCategories.fromJson(v));
      });
    }
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
    id = json['id'];
    image = json['image'];
    orderNo = json['order_no'];
    parentId = json['parent_id'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
    slug = json['slug'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
  }
  bool? active;
  List<ChildCategories>? childCategories;
  DescriptionModel? description;
  String? id;
  String? image;
  String? orderNo;
  String? parentId;
  List<Products>? products;
  String? slug;
  TitleModel? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = active;
    if (childCategories != null) {
      map['child_categories'] = childCategories?.map((v) => v.toJson()).toList();
    }
    if (description != null) {
      map['description'] = description?.toJson();
    }
    map['id'] = id;
    map['image'] = image;
    map['order_no'] = orderNo;
    map['parent_id'] = parentId;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['slug'] = slug;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    return map;
  }

}


class Products {
  Products({
      this.active, 
      this.activeInMenu, 
      this.brandId, 
      this.categories, 
      this.currency, 
      this.description, 
      this.discounts, 
      this.fromTime, 
      this.gallery, 
      this.hasModifier, 
      this.id, 
      this.iikoId, 
      this.image, 
      this.jowiId, 
      this.offAlways, 
      this.outPrice, 
      this.rateId, 
      this.string, 
      this.title, 
      this.toTime, 
      this.type,});

  Products.fromJson(dynamic json) {
    active = json['active'];
    activeInMenu = json['active_in_menu'];
    brandId = json['brand_id'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    currency = json['currency'];
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
    if (json['discounts'] != null) {
      discounts = [];
      json['discounts'].forEach((v) {
        discounts?.add(DiscountsModel.fromJson(v));
      });
    }
    fromTime = json['from_time'];
    gallery = json['gallery'] != null ? json['gallery'].cast<String>() : [];
    hasModifier = json['has_modifier'];
    id = json['id'];
    iikoId = json['iiko_id'];
    image = json['image'];
    jowiId = json['jowi_id'];
    offAlways = json['off_always'];
    outPrice = json['out_price'];
    rateId = json['rate_id'];
    string = json['string'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    toTime = json['to_time'];
    type = json['type'];
  }
  bool? active;
  bool? activeInMenu;
  String? brandId;
  List<String>? categories;
  String? currency;
  DescriptionModel? description;
  List<DiscountsModel>? discounts;
  String? fromTime;
  List<String>? gallery;
  bool? hasModifier;
  String? id;
  String? iikoId;
  String? image;
  String? jowiId;
  bool? offAlways;
  int? outPrice;
  String? rateId;
  String? string;
  TitleModel? title;
  String? toTime;
  String? type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['active'] = active;
    map['active_in_menu'] = activeInMenu;
    map['brand_id'] = brandId;
    map['categories'] = categories;
    map['currency'] = currency;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (discounts != null) {
      map['discounts'] = discounts?.map((v) => v.toJson()).toList();
    }
    map['from_time'] = fromTime;
    map['gallery'] = gallery;
    map['has_modifier'] = hasModifier;
    map['id'] = id;
    map['iiko_id'] = iikoId;
    map['image'] = image;
    map['jowi_id'] = jowiId;
    map['off_always'] = offAlways;
    map['out_price'] = outPrice;
    map['rate_id'] = rateId;
    map['string'] = string;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['to_time'] = toTime;
    map['type'] = type;
    return map;
  }

}






class ChildCategories {
  ChildCategories({
      this.createdAt, 
      this.description, 
      this.id, 
      this.image, 
      this.isActive, 
      this.name, 
      this.orderNo, 
      this.parentId, 
      this.slug, 
      this.title,});

  ChildCategories.fromJson(dynamic json) {
    createdAt = json['created_at'];
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
    id = json['id'];
    image = json['image'];
    isActive = json['is_active'];
    name = json['name'];
    orderNo = json['order_no'];
    parentId = json['parent_id'];
    slug = json['slug'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
  }
  String? createdAt;
  DescriptionModel? description;
  String? id;
  String? image;
  bool? isActive;
  String? name;
  String? orderNo;
  String? parentId;
  String? slug;
  TitleModel? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['created_at'] = createdAt;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    map['id'] = id;
    map['image'] = image;
    map['is_active'] = isActive;
    map['name'] = name;
    map['order_no'] = orderNo;
    map['parent_id'] = parentId;
    map['slug'] = slug;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    return map;
  }

}



class Description {
  Description({
      this.en, 
      this.ru, 
      this.uz,});

  Description.fromJson(dynamic json) {
    en = json['en'];
    ru = json['ru'];
    uz = json['uz'];
  }
  String? en;
  String? ru;
  String? uz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = en;
    map['ru'] = ru;
    map['uz'] = uz;
    return map;
  }

}

class Brand {
  Brand({
      this.description, 
      this.id, 
      this.image, 
      this.isActive, 
      this.orderNo, 
      this.parentId, 
      this.slug, 
      this.title,});

  Brand.fromJson(dynamic json) {
    description = json['description'] != null ? DescriptionModel.fromJson(json['description']) : null;
    id = json['id'];
    image = json['image'];
    isActive = json['is_active'];
    orderNo = json['order_no'];
    parentId = json['parent_id'];
    slug = json['slug'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
  }
  DescriptionModel? description;
  String? id;
  String? image;
  bool? isActive;
  String? orderNo;
  String? parentId;
  String? slug;
  TitleModel? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (description != null) {
      map['description'] = description?.toJson();
    }
    map['id'] = id;
    map['image'] = image;
    map['is_active'] = isActive;
    map['order_no'] = orderNo;
    map['parent_id'] = parentId;
    map['slug'] = slug;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    return map;
  }

}


