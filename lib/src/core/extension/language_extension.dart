import 'package:ploff_kebab/src/data/models/other_models/name_model.dart';
import 'package:ploff_kebab/src/data/models/title/title.dart';

import 'package:ploff_kebab/src/data/source/local_source.dart';
import 'package:ploff_kebab/src/data/translations_model.dart';
import 'package:ploff_kebab/src/injector_container.dart';


extension LocalizedDescription on Translations {
  String getLocalizedDescription() {
    String appLanguage = sl<LocalSource>().locale;
    switch (appLanguage) {
      case 'uz':
        return uz;
      case 'ru':
        return ru;
      case 'en':
        return en;
      default:
        return ''; // Return a default value if the language is not recognized
    }
  }
}

extension LocalizedDesription on TitleModel {
  String? getLocalizedDescription() {
    String appLanguage = sl<LocalSource>().locale;
    switch(appLanguage){
      case 'uz':
       return uz;
      case 'ru':
       return ru;
      case 'en':
        return en;
      default:
        return '';
    }
  }
}

extension LocalizedName on NameModel {
  String? getLocalizedName() {
    String appLanguage = sl<LocalSource>().locale;
    switch(appLanguage){
      case 'uz':
        return uz;
      case 'ru':
        return ru;
      case 'en':
        return en;
      default:
        return '';
    }
  }
}

