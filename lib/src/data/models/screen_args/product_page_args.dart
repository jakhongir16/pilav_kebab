import 'package:ploff_kebab/src/data/translations_model.dart';

class ProductArgs {
  final String image;
  final Translations title;
  final Translations description;

  const ProductArgs({
   required this.image,
   required this.title,
   required this.description
});
}
