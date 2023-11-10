import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class ProductAppBar extends StatelessWidget {
  const  ProductAppBar({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 16, ),
        child: Ink(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.color.white.withOpacity(0.8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Ink(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.color.white.withOpacity(0.8),
            ),
            child: Center(
              child: IconButton(

                icon: const Icon(Icons.share,),
                onPressed: (){},

              ),
            ),
          ),
        )
      ],
      elevation: 0,
      backgroundColor: context.colorScheme.background,
      expandedHeight: 204,
      scrolledUnderElevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: SizedBox(
                width: double.infinity,
                height: 240,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: image.isNotEmpty ? DecorationImage(
                        image: CachedNetworkImageProvider(
                          Constants.imageUrl + image),
                         fit: BoxFit.fill,
                    ) : const DecorationImage(image: AssetImage(
                      AppImages.defaultProduct,
                    ),
                    fit: BoxFit.fill,
                    ),

                  ),
                ),

              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Ink(
                height: 16,
                decoration: BoxDecoration(
                  color: context.color.whiteBackground,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
