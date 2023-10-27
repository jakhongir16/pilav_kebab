import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/data/models/test.dart';
import 'package:ploff_kebab/src/data/source/hive/product.dart';
import 'package:ploff_kebab/src/data/source/local_source.dart';
import 'package:ploff_kebab/src/data/translations_model.dart';
import 'package:ploff_kebab/src/injector_container.dart';

import '../../data/models/banner/banner_response.dart';

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

// extension LocalizedName on Title {
//   String getLocalizedDescription() {
//     String appLanguage = sl<LocalSource>().locale;
//     switch (appLanguage) {
//       case 'uz':
//         return uz;
//       case 'ru':
//         return ru;
//       case 'en':
//         return en;
//       default:
//         return ''; // Return a default value if the language is not recognized
//     }
//   }
// }

// extension LocalizedDescription on Description {
//   String getLocalizedDescription() {
//     String appLanguage = sl<LocalSource>().locale;
//     switch (appLanguage) {
//       case 'uz':
//         return uz;
//       case 'ru':
//         return ru;
//       case 'en':
//         return en;
//       default:
//         return ''; // Return a default value if the language is not recognized
//     }
//   }
// }

// extension LocalizedTitle on Title {
//   String getLocalizedDescription() {
//     String appLanguage = sl<LocalSource>().locale;
//     switch (appLanguage) {
//       case 'uz':
//         return uz;
//       case 'ru':
//         return ru;
//       case 'en':
//         return en;
//       default:
//         return ''; // Return a default value if the language is not recognized
//     }
//   }
// }