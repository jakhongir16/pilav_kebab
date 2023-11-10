import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/components/bouncing_widget/bouncing_widget.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({Key? key,
  required this.onTap,
  this.isDisable = false,
  this.isRemove = false,
  this.size = 44,
  this.colorBackground,
  this.colorIcon,
  this.borderRadius = AppUtils.kBorderRadius12,
  }) : super(key: key);
  final Function() onTap;
  final bool isRemove;
  final double size;
  final Color? colorBackground;
  final Color? colorIcon;
  final BorderRadius? borderRadius;
  final bool isDisable;
  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: onTap,
      duration: const Duration(milliseconds: 100),
      scaleFactor: 1.8,
      child: SizedBox(
        height: size,
        width: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Colors.transparent,
          ),
          child: Center(
            child: Icon(
              isRemove ? Icons.remove : Icons.add,
              color: isDisable
               ? context.color.thirdBlack
               : (colorIcon ?? context.color.firstBlack)
            ),
          ),
        ),

      ),
    );
  }
}
