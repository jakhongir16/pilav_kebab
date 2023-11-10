import 'package:ploff_kebab/src/data/models/title/title.dart';

class ProductPropertyModel {
  ProductPropertyModel({
    this.optionId,
    this.propertyId,
    this.title,});

  ProductPropertyModel.fromJson(dynamic json) {
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