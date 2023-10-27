import 'package:ploff_kebab/src/data/models/product_model.dart';
import 'package:ploff_kebab/src/data/translations_model.dart';

class CategoryWithProductModel {
  List<Category> categories;
  String count;

  CategoryWithProductModel({
    required this.categories,
    required this.count,
  });

  factory CategoryWithProductModel.fromJson(Map<String, dynamic> json) => CategoryWithProductModel(
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "count": count,
  };
}

class Category {
  String id;
  String slug;
  String parentId;
  String image;
  Description description;
  Description title;
  String orderNo;
  bool active;
  List<Product> products;

  Category({
    required this.id,
    required this.slug,
    required this.parentId,
    required this.image,
    required this.description,
    required this.title,
    required this.orderNo,
    required this.active,
    required this.products,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    slug: json["slug"],
    parentId: json["parent_id"],
    image: json["image"],
    description: Description.fromJson(json["description"]),
    title: Description.fromJson(json["title"]),
    orderNo: json["order_no"],
    active: json["active"],
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "parent_id": parentId,
    "image": image,
    "description": description.toJson(),
    "title": title.toJson(),
    "order_no": orderNo,
    "active": active,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Description {
  String uz;
  String ru;
  String en;

  Description({
    required this.uz,
    required this.ru,
    required this.en,
  });

  factory Description.fromJson(Map<String, dynamic> json) => Description(
    uz: json["uz"],
    ru: json["ru"],
    en: json["en"],
  );

  Map<String, dynamic> toJson() => {
    "uz": uz,
    "ru": ru,
    "en": en,
  };
}

class Product {
  String id;
  int outPrice;
  Currency currency;
  String string;
  Type type;
  List<String> categories;
  String brandId;
  String rateId;
  String image;
  bool activeInMenu;
  bool hasModifier;
  String fromTime;
  String toTime;
  bool offAlways;
  dynamic gallery;
  Description title;
  Description description;
  bool active;
  String iikoId;
  String jowiId;
  dynamic discounts;

  Product({
    required this.id,
    required this.outPrice,
    required this.currency,
    required this.string,
    required this.type,
    required this.categories,
    required this.brandId,
    required this.rateId,
    required this.image,
    required this.activeInMenu,
    required this.hasModifier,
    required this.fromTime,
    required this.toTime,
    required this.offAlways,
    required this.gallery,
    required this.title,
    required this.description,
    required this.active,
    required this.iikoId,
    required this.jowiId,
    required this.discounts,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    outPrice: json["out_price"],
    currency: currencyValues.map[json["currency"]]!,
    string: json["string"],
    type: typeValues.map[json["type"]]!,
    categories: List<String>.from(json["categories"].map((x) => x)),
    brandId: json["brand_id"],
    rateId: json["rate_id"],
    image: json["image"],
    activeInMenu: json["active_in_menu"],
    hasModifier: json["has_modifier"],
    fromTime: json["from_time"],
    toTime: json["to_time"],
    offAlways: json["off_always"],
    gallery: json["gallery"],
    title: Description.fromJson(json["title"]),
    description: Description.fromJson(json["description"]),
    active: json["active"],
    iikoId: json["iiko_id"],
    jowiId: json["jowi_id"],
    discounts: json["discounts"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "out_price": outPrice,
    "currency": currencyValues.reverse[currency],
    "string": string,
    "type": typeValues.reverse[type],
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "brand_id": brandId,
    "rate_id": rateId,
    "image": image,
    "active_in_menu": activeInMenu,
    "has_modifier": hasModifier,
    "from_time": fromTime,
    "to_time": toTime,
    "off_always": offAlways,
    "gallery": gallery,
    "title": title.toJson(),
    "description": description.toJson(),
    "active": active,
    "iiko_id": iikoId,
    "jowi_id": jowiId,
    "discounts": discounts,
  };
}

enum Currency {
  UZS
}

final currencyValues = EnumValues({
  "UZS": Currency.UZS
});

enum Type {
  COMBO,
  ORIGIN,
  SIMPLE
}

final typeValues = EnumValues({
  "combo": Type.COMBO,
  "origin": Type.ORIGIN,
  "simple": Type.SIMPLE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}



// class CategoryWithProductsModel {
//   final String id;
//   final String slug;
//   final String parentId;
//   final String image;
//   final Translations title;
//   final Translations description;
//   final String orderNo;
//   final bool active;
//   final List<ProductModel> products;
//
//   CategoryWithProductsModel({
//     required this.id,
//     required this.slug,
//     required this.parentId,
//     required this.image,
//     required this.description,
//     required this.title,
//     required this.orderNo,
//     required this.active,
//     required this.products,
//   });
//   factory CategoryWithProductsModel.fromJson(Map<String, dynamic> json) {
//     return CategoryWithProductsModel(
//       id: json['id'] ?? '',
//       slug: json['slug'] ?? '',
//       parentId: json['parent_id'],
//       image: json['image'] ?? '',
//       description: Translations.fromJson(json['description']),
//       title: Translations.fromJson(json['title']),
//       orderNo: json['order_no'] ?? '',
//       active: json['active'] ?? false,
//       products: (json['products'] as List<dynamic>?)
//           ?.map((e) => ProductModel.fromJson(e))
//           .toList() ??
//           [],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'slug': slug,
//       'parentId': parentId,
//       'image': image,
//       'description': description.toJson(),
//       'title': title.toJson(),
//       'orderNo': orderNo,
//       'active': active,
//       'products': products.map((e) => e.toJson()).toList(),
//     };
//   }
//
//   CategoryWithProductsModel copyWith({
//     String? id,
//     String? slug,
//     String? parentId,
//     String? image,
//     Translations? description,
//     Translations? title,
//     String? orderNo,
//     bool? active,
//     List<ProductModel>? products,
//   }) =>
//       CategoryWithProductsModel(
//         id: id ?? this.id,
//         slug: slug ?? this.slug,
//         parentId: parentId ?? this.parentId,
//         image: image ?? this.image,
//         description: description ?? this.description,
//         title: title ?? this.title,
//         orderNo: orderNo ?? this.orderNo,
//         active: active ?? this.active,
//         products: products ?? this.products,
//       );
// }



// class CategoryWithProductModel {
//   List<Categories>? categories;
//   String? count;
//
//   CategoryWithProductModel({this.categories, this.count});
//
//   CategoryWithProductModel.fromJson(Map<String, dynamic> json) {
//     if (json['categories'] != null) {
//       categories = <Categories>[];
//       json['categories'].forEach((v) {
//         categories!.add(new Categories.fromJson(v));
//       });
//     }
//     count = json['count'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.categories != null) {
//       data['categories'] = this.categories!.map((v) => v.toJson()).toList();
//     }
//     data['count'] = this.count;
//     return data;
//   }
// }
//
// class Categories {
//   List<ChildCategories>? childCategories;
//   String? description;
//   DescriptionV2? descriptionV2;
//   String? id;
//   String? image;
//   String? name;
//   String? orderNo;
//   String? parentId;
//   List<Products>? products;
//   String? slug;
//   DescriptionV2? title;
//
//   Categories(
//       {this.childCategories,
//         this.description,
//         this.descriptionV2,
//         this.id,
//         this.image,
//         this.name,
//         this.orderNo,
//         this.parentId,
//         this.products,
//         this.slug,
//         this.title});
//
//   Categories.fromJson(Map<String, dynamic> json) {
//     if (json['child_categories'] != null) {
//       childCategories = <ChildCategories>[];
//       json['child_categories'].forEach((v) {
//         childCategories!.add(new ChildCategories.fromJson(v));
//       });
//     }
//     description = json['description'];
//     descriptionV2 = json['description_v2'] != null
//         ? new DescriptionV2.fromJson(json['description_v2'])
//         : null;
//     id = json['id'];
//     image = json['image'];
//     name = json['name'];
//     orderNo = json['order_no'];
//     parentId = json['parent_id'];
//     if (json['products'] != null) {
//       products = <Products>[];
//       json['products'].forEach((v) {
//         products!.add(new Products.fromJson(v));
//       });
//     }
//     slug = json['slug'];
//     title = json['title'] != null
//         ? new DescriptionV2.fromJson(json['title'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.childCategories != null) {
//       data['child_categories'] =
//           this.childCategories!.map((v) => v.toJson()).toList();
//     }
//     data['description'] = this.description;
//     if (this.descriptionV2 != null) {
//       data['description_v2'] = this.descriptionV2!.toJson();
//     }
//     data['id'] = this.id;
//     data['image'] = this.image;
//     data['name'] = this.name;
//     data['order_no'] = this.orderNo;
//     data['parent_id'] = this.parentId;
//     if (this.products != null) {
//       data['products'] = this.products!.map((v) => v.toJson()).toList();
//     }
//     data['slug'] = this.slug;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     return data;
//   }
// }
//
// class ChildCategories {
//   String? description;
//   DescriptionV2? descriptionV2;
//   String? id;
//   String? image;
//   String? name;
//   String? orderNo;
//   String? parentId;
//   List<Products>? products;
//   String? slug;
//   DescriptionV2? title;
//
//   ChildCategories(
//       {this.description,
//         this.descriptionV2,
//         this.id,
//         this.image,
//         this.name,
//         this.orderNo,
//         this.parentId,
//         this.products,
//         this.slug,
//         this.title});
//
//   ChildCategories.fromJson(Map<String, dynamic> json) {
//     description = json['description'];
//     descriptionV2 = json['description_v2'] != null
//         ? new DescriptionV2.fromJson(json['description_v2'])
//         : null;
//     id = json['id'];
//     image = json['image'];
//     name = json['name'];
//     orderNo = json['order_no'];
//     parentId = json['parent_id'];
//     if (json['products'] != null) {
//       products = <Products>[];
//       json['products'].forEach((v) {
//         products!.add(new Products.fromJson(v));
//       });
//     }
//     slug = json['slug'];
//     title = json['title'] != null
//         ? new DescriptionV2.fromJson(json['title'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['description'] = this.description;
//     if (this.descriptionV2 != null) {
//       data['description_v2'] = this.descriptionV2!.toJson();
//     }
//     data['id'] = this.id;
//     data['image'] = this.image;
//     data['name'] = this.name;
//     data['order_no'] = this.orderNo;
//     data['parent_id'] = this.parentId;
//     if (this.products != null) {
//       data['products'] = this.products!.map((v) => v.toJson()).toList();
//     }
//     data['slug'] = this.slug;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     return data;
//   }
// }
//
// class DescriptionV2 {
//   String? en;
//   String? ru;
//   String? uz;
//
//   DescriptionV2({this.en, this.ru, this.uz});
//
//   DescriptionV2.fromJson(Map<String, dynamic> json) {
//     en = json['en'];
//     ru = json['ru'];
//     uz = json['uz'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['en'] = this.en;
//     data['ru'] = this.ru;
//     data['uz'] = this.uz;
//     return data;
//   }
// }
//
// class Products {
//   String? categoryId;
//   String? description;
//   DescriptionV2? descriptionV2;
//   bool? hasModifier;
//   String? id;
//   String? image;
//   String? name;
//   String? orderNo;
//   String? price;
//   String? slug;
//   DescriptionV2? title;
//
//   Products(
//       {this.categoryId,
//         this.description,
//         this.descriptionV2,
//         this.hasModifier,
//         this.id,
//         this.image,
//         this.name,
//         this.orderNo,
//         this.price,
//         this.slug,
//         this.title});
//
//   Products.fromJson(Map<String, dynamic> json) {
//     categoryId = json['category_id'];
//     description = json['description'];
//     descriptionV2 = json['description_v2'] != null
//         ? new DescriptionV2.fromJson(json['description_v2'])
//         : null;
//     hasModifier = json['has_modifier'];
//     id = json['id'];
//     image = json['image'];
//     name = json['name'];
//     orderNo = json['order_no'];
//     price = json['price'];
//     slug = json['slug'];
//     title = json['title'] != null
//         ? new DescriptionV2.fromJson(json['title'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['category_id'] = this.categoryId;
//     data['description'] = this.description;
//     if (this.descriptionV2 != null) {
//       data['description_v2'] = this.descriptionV2!.toJson();
//     }
//     data['has_modifier'] = this.hasModifier;
//     data['id'] = this.id;
//     data['image'] = this.image;
//     data['name'] = this.name;
//     data['order_no'] = this.orderNo;
//     data['price'] = this.price;
//     data['slug'] = this.slug;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     return data;
//   }
// }