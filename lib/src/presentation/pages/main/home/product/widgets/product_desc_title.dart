import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class ProductDescTitle extends StatelessWidget {
  const ProductDescTitle({Key? key, required this.description, required this.title}) : super(key: key);
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) => SizedBox(
    height: 168,
    child: DecoratedBox(
        decoration: ShapeDecoration(
          color: context.color.whiteBackground,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
               Radius.circular(16),
            ),
          ),
        ),
    child: Padding(
      padding: AppUtils.kPaddingL16R16T0B16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppUtils.kGap16,
          Text(title,
          style: context.textStyle.appBarTitle.copyWith(fontSize: 22),
          ),
          AppUtils.kGap12,
          Text(
              description,
             style: context.textStyle.sfProDisplay2.copyWith(
               color: context.color.thirdBlack,
             ),
          )
        ],
      ),
    ),
    ),
  );
}
