class Language {
  Language({
    this.uz,
    this.ru,
    this.en,
  });

  Language.fromJson(dynamic json) {
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

  String? presentTongue(String tongue) =>
  switch (tongue) { 'uz' => uz, 'en' => en, 'ru' => ru, _ => '' };

}
