import 'dart:convert';

/// categories : [{"id":"abf393d0-b6b3-4c0c-8dcb-27639365e3b6","slug":"burger-en-1esi4l1ldu6k3ts","parent_id":"","image":"fcb90f5e-59ba-4118-b306-c54e632bd225","description":{"uz":"Burger uz","ru":"Burger ru","en":"Burger en"},"title":{"uz":"Burger uz","ru":"Burger ru","en":"Burger en"},"order_no":"1","active":true,"products":[{"id":"9a60bd96-54af-4a22-8dc3-2d38cf8e98fc","out_price":1000,"currency":"UZS","string":"","type":"simple","categories":["abf393d0-b6b3-4c0c-8dcb-27639365e3b6"],"brand_id":"","rate_id":"","image":"","active_in_menu":false,"has_modifier":false,"from_time":"","to_time":"","off_always":false,"gallery":null,"title":{"uz":"ketchup","ru":"ketchup","en":"ketchup"},"description":{"uz":"ketchup","ru":"ketchup","en":"ketchup"},"active":true,"iiko_id":"f23efc65-0d7b-467e-96aa-17f864c29cc8","jowi_id":"","discounts":null}],"child_categories":null},{"id":"1711295c-8c31-4c49-a74b-3f764edcfcb3","slug":"drinks-1esi4l1ldu6lo00","parent_id":"","image":"","description":{"uz":"Ichimlik","ru":"Напитки","en":"Drinks"},"title":{"uz":"Ichimlik","ru":"Напитки","en":"Drinks"},"order_no":"2","active":true,"products":[{"id":"28ef9520-d673-438c-a1f8-a7a63c70d87c","out_price":3,"currency":"UZS","string":"","type":"simple","categories":["1711295c-8c31-4c49-a74b-3f764edcfcb3"],"brand_id":"","rate_id":"","image":"","active_in_menu":false,"has_modifier":false,"from_time":"","to_time":"","off_always":false,"gallery":null,"title":{"uz":"Kofe","ru":"Kofe","en":"Kofe"},"description":{"uz":"Kofe","ru":"Kofe","en":"Kofe"},"active":true,"iiko_id":"8a897e8d-1e0f-425f-ad0e-11b52c53d646","jowi_id":"","discounts":null}],"child_categories":[{"id":"123bc459-d59d-4b34-8de4-fa1eac96834d","name":"","slug":"non-carbonated-1esi4l1ldu6v5ww","parent_id":"1711295c-8c31-4c49-a74b-3f764edcfcb3","image":"","order_no":"4","title":{"uz":"Gazlanmagan","ru":"Негазированные","en":"Non-carbonated"},"description":{"uz":"Gazlanmagan","ru":"Негазированные","en":"Non-carbonated"},"is_active":false,"created_at":"Tue Feb 07 2023 16:58:53 GMT+0500 (GMT+05:00)"}]},{"id":"3fe3815b-d2bb-4f93-ae66-79c6fab2e7c9","slug":"soda-1esi4l1ldu6pd9q","parent_id":"","image":"","description":{"uz":"Gazlangan","ru":"Газировка","en":"Carbonated"},"title":{"uz":"Gazlangan","ru":"Газировка","en":"Carbonated"},"order_no":"3","active":true,"products":[{"id":"bcd4adb7-89bf-4ee1-abb8-e0c9b4a370a1","out_price":12000,"currency":"UZS","string":"","type":"simple","categories":["3fe3815b-d2bb-4f93-ae66-79c6fab2e7c9"],"brand_id":"","rate_id":"","image":"ba733e54-a2c2-4ba5-9395-110bf0671b54","active_in_menu":false,"has_modifier":false,"from_time":"","to_time":"","off_always":false,"gallery":null,"title":{"uz":"Pepsi 1.5L","ru":"Пепси 1.5Л","en":"Pepsi 1.5L"},"description":{"uz":"Muzdek pepsi","ru":"Холодно пепси","en":"Cold pepsi"},"active":true,"iiko_id":"","jowi_id":"","discounts":null},{"id":"1222a1ed-e7c8-4db8-a95f-64268d46f3ef","out_price":12000,"currency":"UZS","string":"","type":"simple","categories":["3fe3815b-d2bb-4f93-ae66-79c6fab2e7c9"],"brand_id":"","rate_id":"","image":"77874cee-ee77-4de5-9300-c0a379454f0d","active_in_menu":false,"has_modifier":false,"from_time":"","to_time":"","off_always":false,"gallery":null,"title":{"uz":"Kola 1.5L","ru":"Кола 1.5Л","en":"Kola 1.5L"},"description":{"uz":"Muzdek kola","ru":"Холодно кола","en":"Cold cola"},"active":true,"iiko_id":"","jowi_id":"","discounts":null}],"child_categories":null},{"id":"edfbee50-cdf0-4ca0-94cf-e64203c60b1a","slug":"pizza-en-1esi4l1ldu6x867","parent_id":"","image":"79f8bc68-c4cf-45d9-b9e9-7412ea4ab5b2","description":{"uz":"Pizza uz","ru":"Pizza ru","en":"Pizza en"},"title":{"uz":"Pizza uz","ru":"Pizza ru","en":"Pizza en"},"order_no":"5","active":true,"products":[{"id":"210d0554-b7cc-4a65-b162-b628308af336","out_price":50000,"currency":"UZS","string":"","type":"origin","categories":["edfbee50-cdf0-4ca0-94cf-e64203c60b1a"],"brand_id":"","rate_id":"","image":"","active_in_menu":false,"has_modifier":false,"from_time":"","to_time":"","off_always":false,"gallery":null,"title":{"uz":"Donar Pizza uz","ru":"Donar Pizza ru","en":"Donar Pizza en"},"description":{"uz":"Donar Pizza desc uz","ru":"Donar Pizza desc ru","en":"Donar Pizza desc en"},"active":true,"iiko_id":"","jowi_id":"","discounts":null}],"child_categories":null}]
/// count : "4"

CategoryWithProducts categoryWithProductsFromJson(String str) =>
    CategoryWithProducts.fromJson(json.decode(str));

String categoryWithProductsToJson(CategoryWithProducts data) =>
    json.encode(data.toJson());

class CategoryWithProducts {
  CategoryWithProducts({
    this.categories,
    this.count,
  });

  CategoryWithProducts.fromJson(dynamic json) {
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    count = json['count'];
  }

  List<Categories>? categories;
  String? count;

  CategoryWithProducts copyWith({
    List<Categories>? categories,
    String? count,
  }) =>
      CategoryWithProducts(
        categories: categories ?? this.categories,
        count: count ?? this.count,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }
}

/// id : "abf393d0-b6b3-4c0c-8dcb-27639365e3b6"
/// slug : "burger-en-1esi4l1ldu6k3ts"
/// parent_id : ""
/// image : "fcb90f5e-59ba-4118-b306-c54e632bd225"
/// description : {"uz":"Burger uz","ru":"Burger ru","en":"Burger en"}
/// title : {"uz":"Burger uz","ru":"Burger ru","en":"Burger en"}
/// order_no : "1"
/// active : true
/// products : [{"id":"9a60bd96-54af-4a22-8dc3-2d38cf8e98fc","out_price":1000,"currency":"UZS","string":"","type":"simple","categories":["abf393d0-b6b3-4c0c-8dcb-27639365e3b6"],"brand_id":"","rate_id":"","image":"","active_in_menu":false,"has_modifier":false,"from_time":"","to_time":"","off_always":false,"gallery":null,"title":{"uz":"ketchup","ru":"ketchup","en":"ketchup"},"description":{"uz":"ketchup","ru":"ketchup","en":"ketchup"},"active":true,"iiko_id":"f23efc65-0d7b-467e-96aa-17f864c29cc8","jowi_id":"","discounts":null}]
/// child_categories : null

Categories categoriesFromJson(String str) =>
    Categories.fromJson(json.decode(str));

String categoriesToJson(Categories data) => json.encode(data.toJson());

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
    this.childCategories,
  });

  Categories.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    parentId = json['parent_id'];
    image = json['image'];
    description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    orderNo = json['order_no'];
    active = json['active'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
    childCategories = json['child_categories'];
  }

  String? id;
  String? slug;
  String? parentId;
  String? image;
  Description? description;
  Title? title;
  String? orderNo;
  bool? active;
  List<Products>? products;
  dynamic childCategories;

  Categories copyWith({
    String? id,
    String? slug,
    String? parentId,
    String? image,
    Description? description,
    Title? title,
    String? orderNo,
    bool? active,
    List<Products>? products,
    dynamic childCategories,
  }) =>
      Categories(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        parentId: parentId ?? this.parentId,
        image: image ?? this.image,
        description: description ?? this.description,
        title: title ?? this.title,
        orderNo: orderNo ?? this.orderNo,
        active: active ?? this.active,
        products: products ?? this.products,
        childCategories: childCategories ?? this.childCategories,
      );

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
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['child_categories'] = childCategories;
    return map;
  }
}

/// id : "9a60bd96-54af-4a22-8dc3-2d38cf8e98fc"
/// out_price : 1000
/// currency : "UZS"
/// string : ""
/// type : "simple"
/// categories : ["abf393d0-b6b3-4c0c-8dcb-27639365e3b6"]
/// brand_id : ""
/// rate_id : ""
/// image : ""
/// active_in_menu : false
/// has_modifier : false
/// from_time : ""
/// to_time : ""
/// off_always : false
/// gallery : null
/// title : {"uz":"ketchup","ru":"ketchup","en":"ketchup"}
/// description : {"uz":"ketchup","ru":"ketchup","en":"ketchup"}
/// active : true
/// iiko_id : "f23efc65-0d7b-467e-96aa-17f864c29cc8"
/// jowi_id : ""
/// discounts : null

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    this.id,
    this.outPrice,
    this.currency,
    this.string,
    this.type,
    this.categories,
    this.brandId,
    this.rateId,
    this.image,
    this.activeInMenu,
    this.hasModifier,
    this.fromTime,
    this.toTime,
    this.offAlways,
    this.gallery,
    this.title,
    this.description,
    this.active,
    this.iikoId,
    this.jowiId,
    this.discounts,
  });

  Products.fromJson(dynamic json) {
    id = json['id'];
    outPrice = json['out_price'];
    currency = json['currency'];
    string = json['string'];
    type = json['type'];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    brandId = json['brand_id'];
    rateId = json['rate_id'];
    image = json['image'];
    activeInMenu = json['active_in_menu'];
    hasModifier = json['has_modifier'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
    offAlways = json['off_always'];
    gallery = json['gallery'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    active = json['active'];
    iikoId = json['iiko_id'];
    jowiId = json['jowi_id'];
    discounts = json['discounts'];
  }

  String? id;
  int? outPrice;
  String? currency;
  String? string;
  String? type;
  List<String>? categories;
  String? brandId;
  String? rateId;
  String? image;
  bool? activeInMenu;
  bool? hasModifier;
  String? fromTime;
  String? toTime;
  bool? offAlways;
  dynamic gallery;
  Title? title;
  Description? description;
  bool? active;
  String? iikoId;
  String? jowiId;
  dynamic discounts;

  Products copyWith({
    String? id,
    int? outPrice,
    String? currency,
    String? string,
    String? type,
    List<String>? categories,
    String? brandId,
    String? rateId,
    String? image,
    bool? activeInMenu,
    bool? hasModifier,
    String? fromTime,
    String? toTime,
    bool? offAlways,
    dynamic gallery,
    Title? title,
    Description? description,
    bool? active,
    String? iikoId,
    String? jowiId,
    dynamic discounts,
  }) =>
      Products(
        id: id ?? this.id,
        outPrice: outPrice ?? this.outPrice,
        currency: currency ?? this.currency,
        string: string ?? this.string,
        type: type ?? this.type,
        categories: categories ?? this.categories,
        brandId: brandId ?? this.brandId,
        rateId: rateId ?? this.rateId,
        image: image ?? this.image,
        activeInMenu: activeInMenu ?? this.activeInMenu,
        hasModifier: hasModifier ?? this.hasModifier,
        fromTime: fromTime ?? this.fromTime,
        toTime: toTime ?? this.toTime,
        offAlways: offAlways ?? this.offAlways,
        gallery: gallery ?? this.gallery,
        title: title ?? this.title,
        description: description ?? this.description,
        active: active ?? this.active,
        iikoId: iikoId ?? this.iikoId,
        jowiId: jowiId ?? this.jowiId,
        discounts: discounts ?? this.discounts,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['out_price'] = outPrice;
    map['currency'] = currency;
    map['string'] = string;
    map['type'] = type;
    map['categories'] = categories;
    map['brand_id'] = brandId;
    map['rate_id'] = rateId;
    map['image'] = image;
    map['active_in_menu'] = activeInMenu;
    map['has_modifier'] = hasModifier;
    map['from_time'] = fromTime;
    map['to_time'] = toTime;
    map['off_always'] = offAlways;
    map['gallery'] = gallery;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    if (description != null) {
      map['description'] = description?.toJson();
    }
    map['active'] = active;
    map['iiko_id'] = iikoId;
    map['jowi_id'] = jowiId;
    map['discounts'] = discounts;
    return map;
  }
}

/// uz : "ketchup"
/// ru : "ketchup"
/// en : "ketchup"

Description descriptionFromJson(String str) =>
    Description.fromJson(json.decode(str));

String descriptionToJson(Description data) => json.encode(data.toJson());

class Description {
  Description({
    this.uz,
    this.ru,
    this.en,
  });

  Description.fromJson(dynamic json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }

  String? uz;
  String? ru;
  String? en;

  Description copyWith({
    String? uz,
    String? ru,
    String? en,
  }) =>
      Description(
        uz: uz ?? this.uz,
        ru: ru ?? this.ru,
        en: en ?? this.en,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }
}

/// uz : "ketchup"
/// ru : "ketchup"
/// en : "ketchup"

Title titleFromJson(String str) => Title.fromJson(json.decode(str));

String titleToJson(Title data) => json.encode(data.toJson());

class Title {
  Title({
    this.uz,
    this.ru,
    this.en,
  });

  Title.fromJson(dynamic json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }

  String? uz;
  String? ru;
  String? en;

  Title copyWith({
    String? uz,
    String? ru,
    String? en,
  }) =>
      Title(
        uz: uz ?? this.uz,
        ru: ru ?? this.ru,
        en: en ?? this.en,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }
}

/// uz : "Burger uz"
/// ru : "Burger ru"
/// en : "Burger en"

TitleSecond titleSecondFromJson(String str) =>
    TitleSecond.fromJson(json.decode(str));

String titleSecondToJson(TitleSecond data) => json.encode(data.toJson());

class TitleSecond {
  TitleSecond({
    this.uz,
    this.ru,
    this.en,
  });

  TitleSecond.fromJson(dynamic json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }

  String? uz;
  String? ru;
  String? en;

  TitleSecond copyWith({
    String? uz,
    String? ru,
    String? en,
  }) =>
      TitleSecond(
        uz: uz ?? this.uz,
        ru: ru ?? this.ru,
        en: en ?? this.en,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }
}

/// uz : "Burger uz"
/// ru : "Burger ru"
/// en : "Burger en"

DescriptionSecond descriptionSecondFromJson(String str) =>
    DescriptionSecond.fromJson(json.decode(str));

String descriptionSecondToJson(DescriptionSecond data) =>
    json.encode(data.toJson());

class DescriptionSecond {
  DescriptionSecond({
    this.uz,
    this.ru,
    this.en,
  });

  DescriptionSecond.fromJson(dynamic json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }

  String? uz;
  String? ru;
  String? en;

  DescriptionSecond copyWith({
    String? uz,
    String? ru,
    String? en,
  }) =>
      DescriptionSecond(
        uz: uz ?? this.uz,
        ru: ru ?? this.ru,
        en: en ?? this.en,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }
}
