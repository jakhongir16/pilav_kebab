import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
    required this.onTap,
    required this.urlImage,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String urlImage;
  final String title;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: AppUtils.kPaddingOnly16.copyWith(bottom: 16),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SizedBox(
                height: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textStyle.sfProDisplay4.copyWith(
                        color: context.color.primaryText,
                      ),
                    ),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.textStyle.sfProDisplay2.copyWith(
                        color: context.color.thirdBlack,
                      ),
                    ),
                    Text(
                      price,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textStyle.sfProDisplay.copyWith(
                      fontSize: 15),
                    ),
                  ],
                ),
              ),

            ),
            AppUtils.kGap16,
            ClipRRect(
              borderRadius: AppUtils.kBorderRadius8,
              child: urlImage.isNotEmpty
                ?CachedNetworkImage(
                imageUrl: Constants.imageUrl + urlImage,
                fit: BoxFit.cover,
                height: 88,
                width: 88,
                errorWidget: (context, url, error) => const Center(
                  child: Icon(Icons.error)),
              ) : const Image(
                height: 88,
                width: 88,
                image: AssetImage('assets/png/product_empty.png'),
              )
            )
          ],
        ),
      ),
    );
  }
}
