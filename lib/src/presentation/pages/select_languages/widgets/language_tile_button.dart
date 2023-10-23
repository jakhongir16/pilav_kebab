import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
class LanguageTileButton extends StatelessWidget {
  const LanguageTileButton({Key? key, required this.nameOfFlag, required this.languageTitle, required this.onTap}) : super(key: key);
  final String nameOfFlag;
  final String languageTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(

        tileColor: ThemeColors.light.borderRadiusFirstColor,
        shape: AppUtils.kShapeRoundedAll12,

       leading: Image.asset(nameOfFlag),
       title: Text(languageTitle,
        style: context.textStyle.bodySubheadline,
       ),
      ),
    );
  }
}
