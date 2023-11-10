class ComboIdModel {
  ComboIdModel({
    this.groups,
    this.count,
  });

  ComboIdModel.fromJson(dynamic json, String lang) {
    if (json['groups'] != null) {
      groups = [];
      json['groups'].forEach((v) {
        groups?.add(Groups.fromJson(v, lang));
      });
    }
    count = json['count'];
  }

  List<Groups>? groups;
  int? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (groups != null) {
      map['groups'] = groups?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }
}

class Groups {
  Groups({
    this.id,
    this.comboId,
    this.shipperId,
    this.slug,
    this.order,
    this.type,
    this.product,
    this.variants,
    this.quantity,
    this.title,
  });

  Groups.fromJson(dynamic json, String lang) {
    id = json['id'];
    comboId = json['combo_id'];
    shipperId = json['shipper_id'];
    slug = json['slug'];
    order = json['order'];
    type = json['type'];
    product = json['product'];
    if (json['variants'] != null) {
      variants = [];
      json['variants'].forEach((v) {
        variants?.add(Variants.fromJson(v));
      });
    }
    quantity = json['quantity'];
    title = (lang == 'uz')
        ? json['title']['uz']
        : (lang == 'en')
            ? json['title']['en']
            : json['title']['ru'];
  }

  String? id;
  String? comboId;
  String? shipperId;
  String? slug;
  int? order;
  String? type;
  dynamic product;
  List<Variants>? variants;
  int? quantity;
  Title? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['combo_id'] = comboId;
    map['shipper_id'] = shipperId;
    map['slug'] = slug;
    map['order'] = order;
    map['type'] = type;
    map['product'] = product;
    if (variants != null) {
      map['variants'] = variants?.map((v) => v.toJson()).toList();
    }
    map['quantity'] = quantity;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    return map;
  }
}

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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }
}

class Variants {
  Variants({
    this.id,
    this.slug,
    this.title,
    this.code,
    this.description,
    this.categories,
    this.brand,
    this.isDivisible,
    this.tags,
    this.measurement,
    this.rate,
    this.inPrice,
    this.outPrice,
    this.image,
    this.gallery,
    this.favourites,
    this.active,
    this.order,
    this.createdAt,
    this.iikoId,
    this.jowiId,
    this.shipperId,
    this.currency,
    this.type,
    this.properties,
    this.productProperty,
    this.iikoSourceActionId,
    this.iikoGroupId,
    this.activeInMenu,
    this.offAlways,
    this.fromTime,
    this.toTime,
    this.ikpu,
    this.packageCode,
    this.variantProducts,
    this.parentId,
    this.hasModifier,
    this.rkeeperId,
    this.crmName,
    this.posterId,
    this.priceInMenu,
    this.addToOrder,
    this.defaultQuantity,
    this.groups,
    this.updatedAt,
  });

  Variants.fromJson(dynamic json) {
    id = json['id'];
    slug = json['slug'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    code = json['code'];
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    if (json['categories'] != null) {
      categories = [];
      // json['categories'].forEach((v) {
      //   categories?.add(Dynamic.fromJson(v));
      // });
    }
    brand = json['brand'];
    isDivisible = json['is_divisible'];
    if (json['tags'] != null) {
      tags = [];
      // json['tags'].forEach((v) {
      //   tags?.add(Dynamic.fromJson(v));
      // });
    }
    measurement = json['measurement'];
    rate = json['rate'];
    inPrice = json['in_price'];
    outPrice = json['out_price'];
    image = json['image'];
    if (json['gallery'] != null) {
      gallery = [];
      // json['gallery'].forEach((v) {
      //   gallery?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['favourites'] != null) {
      favourites = [];
      // json['favourites'].forEach((v) {
      //   favourites?.add(Dynamic.fromJson(v));
      // });
    }
    active = json['active'];
    order = json['order'];
    createdAt = json['created_at'];
    iikoId = json['iiko_id'];
    jowiId = json['jowi_id'];
    shipperId = json['shipper_id'];
    currency = json['currency'];
    type = json['type'];
    if (json['properties'] != null) {
      properties = [];
      // json['properties'].forEach((v) {
      //   properties?.add(Dynamic.fromJson(v));
      // });
    }
    if (json['product_property'] != null) {
      productProperty = [];
      // json['product_property'].forEach((v) {
      //   productProperty?.add(Dynamic.fromJson(v));
      // });
    }
    iikoSourceActionId = json['iiko_source_action_id'];
    iikoGroupId = json['iiko_group_id'];
    activeInMenu = json['active_in_menu'];
    offAlways = json['off_always'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
    ikpu = json['ikpu'];
    packageCode = json['package_code'];
    if (json['variant_products'] != null) {
      variantProducts = [];
      // json['variant_products'].forEach((v) {
      //   variantProducts?.add(Dynamic.fromJson(v));
      // });
    }
    parentId = json['parent_id'];
    hasModifier = json['has_modifier'];
    rkeeperId = json['rkeeper_id'];
    crmName = json['crm_name'];
    posterId = json['poster_id'];
    priceInMenu = json['price_in_menu'];
    addToOrder = json['add_to_order'];
    defaultQuantity = json['default_quantity'];
    if (json['groups'] != null) {
      groups = [];
      // json['groups'].forEach((v) {
      //   groups?.add(Dynamic.fromJson(v));
      // });
    }
    updatedAt = json['updated_at'];
  }

  String? id;
  String? slug;
  Title? title;
  String? code;
  Description? description;
  List<dynamic>? categories;
  dynamic brand;
  bool? isDivisible;
  List<dynamic>? tags;
  String? measurement;
  dynamic rate;
  int? inPrice;
  int? outPrice;
  String? image;
  List<dynamic>? gallery;
  List<dynamic>? favourites;
  bool? active;
  String? order;
  String? createdAt;
  String? iikoId;
  String? jowiId;
  String? shipperId;
  String? currency;
  String? type;
  List<dynamic>? properties;
  List<dynamic>? productProperty;
  String? iikoSourceActionId;
  String? iikoGroupId;
  bool? activeInMenu;
  bool? offAlways;
  String? fromTime;
  String? toTime;
  String? ikpu;
  String? packageCode;
  List<dynamic>? variantProducts;
  String? parentId;
  bool? hasModifier;
  String? rkeeperId;
  String? crmName;
  String? posterId;
  int? priceInMenu;
  bool? addToOrder;
  int? defaultQuantity;
  List<dynamic>? groups;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['slug'] = slug;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['code'] = code;
    if (description != null) {
      map['description'] = description?.toJson();
    }
    if (categories != null) {
      map['categories'] = categories?.map((v) => v.toJson()).toList();
    }
    map['brand'] = brand;
    map['is_divisible'] = isDivisible;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    map['measurement'] = measurement;
    map['rate'] = rate;
    map['in_price'] = inPrice;
    map['out_price'] = outPrice;
    map['image'] = image;
    if (gallery != null) {
      map['gallery'] = gallery?.map((v) => v.toJson()).toList();
    }
    if (favourites != null) {
      map['favourites'] = favourites?.map((v) => v.toJson()).toList();
    }
    map['active'] = active;
    map['order'] = order;
    map['created_at'] = createdAt;
    map['iiko_id'] = iikoId;
    map['jowi_id'] = jowiId;
    map['shipper_id'] = shipperId;
    map['currency'] = currency;
    map['type'] = type;
    if (properties != null) {
      map['properties'] = properties?.map((v) => v.toJson()).toList();
    }
    if (productProperty != null) {
      map['product_property'] = productProperty?.map((v) => v.toJson()).toList();
    }
    map['iiko_source_action_id'] = iikoSourceActionId;
    map['iiko_group_id'] = iikoGroupId;
    map['active_in_menu'] = activeInMenu;
    map['off_always'] = offAlways;
    map['from_time'] = fromTime;
    map['to_time'] = toTime;
    map['ikpu'] = ikpu;
    map['package_code'] = packageCode;
    if (variantProducts != null) {
      map['variant_products'] = variantProducts?.map((v) => v.toJson()).toList();
    }
    map['parent_id'] = parentId;
    map['has_modifier'] = hasModifier;
    map['rkeeper_id'] = rkeeperId;
    map['crm_name'] = crmName;
    map['poster_id'] = posterId;
    map['price_in_menu'] = priceInMenu;
    map['add_to_order'] = addToOrder;
    map['default_quantity'] = defaultQuantity;
    if (groups != null) {
      map['groups'] = groups?.map((v) => v.toJson()).toList();
    }
    map['updated_at'] = updatedAt;
    return map;
  }
}

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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }
}
