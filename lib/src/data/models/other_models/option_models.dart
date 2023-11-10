import 'package:ploff_kebab/src/data/models/title/title.dart';

class OptionsModel {
  OptionsModel({
    this.id,
    this.title,});

  OptionsModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'] != null ? TitleModel.fromJson(json['title']) : null;
  }
  String? id;
  TitleModel? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    return map;
  }

}
