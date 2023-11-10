import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Padding(
          padding: AppUtils.kPaddingAll8,
          child: CircleAvatar(
            backgroundColor: context.color.white.withOpacity(0.8),
            radius: 18,
            child: IconButton(
              icon: const Icon(Icons.share, color: Colors.black,),

              onPressed: () {},
            ),
          ),
        ),
      ],
      leading: Padding(
        padding: AppUtils.kPaddingAll8,
        child: CircleAvatar(
          backgroundColor: context.color.white.withOpacity(0.8),
          radius: 18,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      expandedHeight: 206,
      flexibleSpace: CachedNetworkImage(
        imageUrl: Constants.imageUrl + image,
        errorWidget: (context, url, error) => const SizedBox(
          child: Image(
            image: AssetImage('assets/png/product_empty.png'),

            height: 30,
            width: 45,
          ),
        ),
        placeholder: (context, url) => const SizedBox(
          child: Image(
            image: AssetImage('assets/png/product_empty.png'),
            height: 30,
            width: 45,
          ),
        ),
        fit: BoxFit.cover,
        width: double.infinity,
        height: 240,
      ),
    );
  }
}
