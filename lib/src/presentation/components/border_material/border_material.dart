import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
class BorderMaterial extends StatelessWidget {
  const BorderMaterial({Key? key,
  required this.child,
  this.padding
  }) : super(key: key);

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: AppUtils.kBorderRadius12,
      color: context.color.white,
      child: Padding(
        padding: padding ?? AppUtils.kPaddingAll16,
        child: child,
      ),
    );
  }
}
