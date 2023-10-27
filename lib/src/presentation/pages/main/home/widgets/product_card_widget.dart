import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/extension/language_extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/models/category_with_products_model.dart';
import 'package:ploff_kebab/src/data/models/product_model.dart';
import 'package:ploff_kebab/src/data/models/screen_args/product_page_args.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.category});

  final List<Category> category;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(itemBuilder: (context, index) {
      return Padding(
        padding: AppUtils.kPaddingAll16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  height: 24,
                  child: Text(
                    'categoryItem.title',
                    style: context.textStyle.regularSubheadline,
                  ),
                ),
                SizedBox(
                  width: 239,
                  height: 38,
                  child: Text(
                    "category",
                    style: context.textStyle.regularFootnote
                        .copyWith(color: context.color.thirdBlack),
                  ),
                ),
                const Gap(8),
                Text(
                  '10000 sum',
                  style: context.textStyle.regularSubheadline
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Gap(8),
            CachedNetworkImage(
                imageUrl: Constants.imageUrl,
                width: 88,
                height: 88,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(
                      Icons.coffee,
                    ),
                placeholder: (context, url) => const Icon(
                      Icons.error,
                    ))
          ],
        ),
      );
    });
  }
}
