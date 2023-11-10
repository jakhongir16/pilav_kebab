class Test {
  Test({
      this.categories,
      this.count,});

  Test.fromJson(dynamic json) {
    if (json['categories'] != null) {
      categories = [];
      json['categories'].forEach((v) {
        categories?.add(CategoriesWithModel.fromJson(v));
      });
    }
    count = json['count'];
  }
  List<CategoriesWithModel>? categories;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }

}

class CategoriesWithModel {
  CategoriesWithModel({
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

  CategoriesWithModel.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    parentId = json['parent_id'];
    image = json['image'];
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    orderNo = json['order_no'];
    active = json['active'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(ProductsWithModel.fromJson(v));
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
  List<ProductsWithModel>? products;
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
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['child_categories'] = childCategories;
    return map;
  }

}

class ProductsWithModel {
  ProductsWithModel({
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
      this.discounts,});

  ProductsWithModel.fromJson(dynamic json) {
    id = json['id'];
    outPrice = json['out_price'];
    currency = json['currency'];
    string = json['string'];
    type = json['type'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : [];
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
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
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

