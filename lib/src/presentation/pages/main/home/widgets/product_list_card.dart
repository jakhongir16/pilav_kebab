import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({
    Key? key,
  required this.title,
  required this.description,
  required this.price,
  required this.urlImage,
  }) : super(key: key);
  final String title;
  final String description;
  final String price;
  final String urlImage;


  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.textStyle.sfProDisplay4.copyWith(
                color: context.color.primaryText,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              description,
              style: context.textStyle.sfProDisplay2.copyWith(
                color: context.color.thirdBlack,
              ),
            ),
          ],
        ),
        subtitle: Text(
          '${price} ${context.tr('sum')}',
          style: context.textStyle.sfProDisplay.copyWith(
            fontSize: 15,
          ),
        ),
        trailing: SizedBox(
          width: 88,
          height: 88,
          child: Material(
            borderRadius: AppUtils.kBorderRadius8,

            child: ClipRect(

              child: CachedNetworkImage(
                imageUrl: urlImage,
                width: 88,
                height: 88,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) =>  Image(image: AssetImage(AppImages.defaultProduct),
                    fit: BoxFit.fill),

              ),
            ),
          ),
        ),
      ),
    ]);
  }
}