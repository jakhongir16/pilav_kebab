class DescriptionModel {
  DescriptionModel({
    this.en,
    this.ru,
    this.uz,});

  DescriptionModel.fromJson(dynamic json) {
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
