import 'package:ploff_kebab/src/data/models/other_models/name_model.dart';

class DiscountsModel {
  DiscountsModel({
    this.discountPrice,
    this.id,
    this.name,});

  DiscountsModel.fromJson(dynamic json) {
    discountPrice = json['discount_price'];
    id = json['id'];
    name = json['name'] != null ? NameModel.fromJson(json['name']) : null;
  }
  int? discountPrice;
  String? id;
  NameModel? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['discount_price'] = discountPrice;
    map['id'] = id;
    if (name != null) {
      map['name'] = name?.toJson();
    }
    return map;
  }

}
