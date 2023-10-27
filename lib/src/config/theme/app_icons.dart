// Place fonts/AppIcons.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: AppIcons
//      fonts:
//       - asset: fonts/AppIcons.ttf
//import 'package:flutter/widgets.dart';
part of 'themes.dart';

const String fromPng = 'assets/png/';

class AppIcons {
  AppIcons._();

  static const String _fontFamily = 'AppIcons';

  static const IconData about = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData basket = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData call = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData check = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData clock = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData credit_card = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData date = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData delete = IconData(0xe908, fontFamily: _fontFamily);
  static const IconData down = IconData(0xe909, fontFamily: _fontFamily);
  static const IconData edit = IconData(0xe90a, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe90b, fontFamily: _fontFamily);
  static const IconData link = IconData(0xe90c, fontFamily: _fontFamily);
  static const IconData location = IconData(0xe90d, fontFamily: _fontFamily);
  static const IconData location_pin = IconData(0xe90e, fontFamily: _fontFamily);
  static const IconData navigator = IconData(0xe90f, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe910, fontFamily: _fontFamily);
  static const IconData right_arrow = IconData(0xe911, fontFamily: _fontFamily);
  static const IconData settings = IconData(0xe913, fontFamily: _fontFamily);
  static const IconData shopping_bag = IconData(0xe900, fontFamily: _fontFamily);
}

sealed class AppImages {
  static const String defaultProduct = '${fromPng}product_empty.png';
  static const String logo = '${fromPng}logo.png';
  static const String emptyCart = '${fromPng}empty_cart.png';
  static const String mapIcon = '${fromPng}map_icon.png';
}
