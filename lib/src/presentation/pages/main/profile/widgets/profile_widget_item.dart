import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
    this.trailing,
  });

  final Widget icon;
  final Widget? trailing;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: Ink(
      padding: AppUtils.kPaddingHor16Ver24,
      decoration: BoxDecoration(
        borderRadius: AppUtils.kBorderRadius12,
        color: context.theme.cardColor,
      ),
      child: Row(
        children: [
          Ink(
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
              borderRadius: AppUtils.kBorderRadius10,
            ),
            child: icon,
          ),
          const Gap(12),
          Text(text),
          const Spacer(),
          Icon(AppIcons.right_arrow, color: context.color.loadIndicator,),
        ],
      ),
    ),
  );
}
