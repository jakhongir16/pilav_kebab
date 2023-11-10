class TitleModel {
  TitleModel({
    this.uz,
    this.ru,
    this.en,});

  TitleModel.fromJson(dynamic json) {
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