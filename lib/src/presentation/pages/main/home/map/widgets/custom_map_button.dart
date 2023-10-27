import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class CustomMapButton extends StatelessWidget {
  final Function()? onPressed;
  final EdgeInsets? padding;

  const CustomMapButton({
    Key? key,
    this.onPressed,
    this.padding,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      right: 30,
      child: IconButton(
        splashRadius: 0.1,
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: Material(
          color: context.color.white,
          borderRadius: AppUtils.kBorderRadius12,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              AppIcons.location,
            ),
          ),
        ),
      ),
    );
  }
}



// Padding(
// padding: padding ?? AppUtils.kPaddingAll16,
// child: InkWell(
// borderRadius: AppUtils.kBorderRadius12,
// onTap: onTap,
// child: SizedBox(
// height: 35,
// width: 35,
// child: Padding(
// padding: AppUtils.kPaddingAll8,
// child: DecoratedBox(
// decoration: BoxDecoration(
// borderRadius: AppUtils.kBorderRadius12,
// color: context.color.white,
//
// boxShadow: [
// BoxShadow(
// color: Colors.grey.withOpacity(0.5),
// spreadRadius: 1,
// blurRadius: 10,
// offset: const Offset(0, 3), // changes position of shadow
// ),
// ]
// ),
//
// child: IconButton(
// padding: EdgeInsets.zero,
// icon: Icon(AppIcons.location,
// height: 20,
// width: 20,
// ),
// )
// onPressed: onTap,
// iconSize: 20,
// splashRadius: 20,
// ),
// ),
// ),
// ),
// );