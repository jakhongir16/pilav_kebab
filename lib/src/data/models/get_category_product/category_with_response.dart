import 'package:ploff_kebab/src/data/models/title/title.dart';

class CategoryWithResponse {
  CategoryWithResponse({
    List<CategoryModel>? categories,
    String? count,
  }) {
    _categories = categories;
    _count = count;
  }

  CategoryWithResponse.fromJson(json) {
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories?.add(CategoryModel.fromJson(v));
      });
    }
    _count = json['count'];
  }
  List<CategoryModel>? _categories;
  String? _count;
  CategoryWithResponse copyWith({
    List<CategoryModel>? categories,
    String? count,
  }) =>
      CategoryWithResponse(
        categories: categories ?? _categories,
        count: count ?? _count,
      );
  List<CategoryModel>? get categories => _categories;
  String? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_categories != null) {
      map['categories'] = _categories?.map((v) => v.toJson()).toList();
    }
    map['count'] = _count;
    return map;
  }
}

class CategoryModel {
  CategoryModel({
    String? id,
    String? slug,
    String? parentId,
    String? image,
    TitleModel? description,
    TitleModel? title,
    String? orderNo,
    bool? active,
    List<ProductModel>? products,
    childCategories,
  }) {
    _id = id;
    _slug = slug;
    _parentId = parentId;
    _image = image;
    _description = description;
    _title = title;
    _orderNo = orderNo;
    _active = active;
    _products = products;
    _childCategories = childCategories;
  }

  CategoryModel.fromJson(json) {
    _id = json['id'];
    _slug = json['slug'];
    _parentId = json['parent_id'];
    _image = json['image'];
    _description = json['description'] != null
        ? TitleModel.fromJson(json['description'])
        : null;
    _title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    _orderNo = json['order_no'];
    _active = json['active'];
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(ProductModel.fromJson(v));
      });
    }
    _childCategories = json['child_categories'];
  }
  String? _id;
  String? _slug;
  String? _parentId;
  String? _image;
  TitleModel? _description;
  TitleModel? _title;
  String? _orderNo;
  bool? _active;
  List<ProductModel>? _products;
  dynamic _childCategories;
  CategoryModel copyWith({
    String? id,
    String? slug,
    String? parentId,
    String? image,
    TitleModel? description,
    TitleModel? title,
    String? orderNo,
    bool? active,
    List<ProductModel>? products,
    // dynamic childCategories,
  }) =>
      CategoryModel(
        id: id ?? _id,
        slug: slug ?? _slug,
        parentId: parentId ?? _parentId,
        image: image ?? _image,
        description: description ?? _description,
        title: title ?? _title,
        orderNo: orderNo ?? _orderNo,
        active: active ?? _active,
        products: products ?? _products,
        childCategories: childCategories ?? _childCategories,
      );
  String? get id => _id;
  String? get slug => _slug;
  String? get parentId => _parentId;
  String? get image => _image;
  TitleModel? get description => _description;
  TitleModel? get title => _title;
  String? get orderNo => _orderNo;
  bool? get active => _active;
  List<ProductModel>? get products => _products;
  dynamic get childCategories => _childCategories;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['slug'] = _slug;
    map['parent_id'] = _parentId;
    map['image'] = _image;
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    map['order_no'] = _orderNo;
    map['active'] = _active;
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    map['child_categories'] = _childCategories;
    return map;
  }
}


class ProductModel {
  ProductModel({
    String? id,
    num? outPrice,
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
    gallery,
    TitleModel? title,
    TitleModel? description,
    bool? active,
    String? iikoId,
    String? jowiId,
    discounts,
  }) {
    _id = id;
    _outPrice = outPrice;
    _currency = currency;
    _string = string;
    _type = type;
    _categories = categories;
    _brandId = brandId;
    _rateId = rateId;
    _image = image;
    _activeInMenu = activeInMenu;
    _hasModifier = hasModifier;
    _fromTime = fromTime;
    _toTime = toTime;
    _offAlways = offAlways;
    _gallery = gallery;
    _title = title;
    _description = description;
    _active = active;
    _iikoId = iikoId;
    _jowiId = jowiId;
    _discounts = discounts;
  }


  ProductModel.fromJson(json) {
    _id = json['id'];
    _outPrice = json['out_price'];
    _currency = json['currency'];
    _string = json['string'];
    _type = json['type'];
    _categories =
    json['categories'] != null ? json['categories'].cast<String>() : [];
    _brandId = json['brand_id'];
    _rateId = json['rate_id'];
    _image = json['image'];
    _activeInMenu = json['active_in_menu'];
    _hasModifier = json['has_modifier'];
    _fromTime = json['from_time'];
    _toTime = json['to_time'];
    _offAlways = json['off_always'];
    _gallery = json['gallery'];
    _title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
    _description = json['description'] != null
        ? TitleModel.fromJson(json['description'])
        : null;
    _active = json['active'];
    _iikoId = json['iiko_id'];
    _jowiId = json['jowi_id'];
    _discounts = json['discounts'];
  }
  String? _id;
  num? _outPrice;
  String? _currency;
  String? _string;
  String? _type;
  List<String>? _categories;
  String? _brandId;
  String? _rateId;
  String? _image;
  bool? _activeInMenu;
  bool? _hasModifier;
  String? _fromTime;
  String? _toTime;
  bool? _offAlways;
  dynamic _gallery;
  TitleModel? _title;
  TitleModel? _description;
  bool? _active;
  String? _iikoId;
  String? _jowiId;
  dynamic _discounts;
  ProductModel copyWith({
    String? id,
    num? outPrice,
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
    // dynamic gallery,
    TitleModel? title,
    TitleModel? description,
    bool? active,
    String? iikoId,
    String? jowiId,
    // dynamic discounts,
  }) =>
      ProductModel(
        id: id ?? _id,
        outPrice: outPrice ?? _outPrice,
        currency: currency ?? _currency,
        string: string ?? _string,
        type: type ?? _type,
        categories: categories ?? _categories,
        brandId: brandId ?? _brandId,
        rateId: rateId ?? _rateId,
        image: image ?? _image,
        activeInMenu: activeInMenu ?? _activeInMenu,
        hasModifier: hasModifier ?? _hasModifier,
        fromTime: fromTime ?? _fromTime,
        toTime: toTime ?? _toTime,
        offAlways: offAlways ?? _offAlways,
        gallery: gallery ?? _gallery,
        title: title ?? _title,
        description: description ?? _description,
        active: active ?? _active,
        iikoId: iikoId ?? _iikoId,
        jowiId: jowiId ?? _jowiId,
        discounts: discounts ?? _discounts,
      );
  String? get id => _id;
  num? get outPrice => _outPrice;
  String? get currency => _currency;
  String? get string => _string;
  String? get type => _type;
  List<String>? get categories => _categories;
  String? get brandId => _brandId;
  String? get rateId => _rateId;
  String? get image => _image;
  bool? get activeInMenu => _activeInMenu;
  bool? get hasModifier => _hasModifier;
  String? get fromTime => _fromTime;
  String? get toTime => _toTime;
  bool? get offAlways => _offAlways;
  dynamic get gallery => _gallery;
  TitleModel? get title => _title;
  TitleModel? get description => _description;
  bool? get active => _active;
  String? get iikoId => _iikoId;
  String? get jowiId => _jowiId;
  dynamic get discounts => _discounts;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['out_price'] = _outPrice;
    map['currency'] = _currency;
    map['string'] = _string;
    map['type'] = _type;
    map['categories'] = _categories;
    map['brand_id'] = _brandId;
    map['rate_id'] = _rateId;
    map['image'] = _image;
    map['active_in_menu'] = _activeInMenu;
    map['has_modifier'] = _hasModifier;
    map['from_time'] = _fromTime;
    map['to_time'] = _toTime;
    map['off_always'] = _offAlways;
    map['gallery'] = _gallery;
    if (_title != null) {
      map['title'] = _title?.toJson();
    }
    if (_description != null) {
      map['description'] = _description?.toJson();
    }
    map['active'] = _active;
    map['iiko_id'] = _iikoId;
    map['jowi_id'] = _jowiId;
    map['discounts'] = _discounts;
    return map;
  }
}