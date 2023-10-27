import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/app_options.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/source/local_source.dart';
import 'package:ploff_kebab/src/injector_container.dart';

class LanguageTileButton extends StatelessWidget {
  const LanguageTileButton({
    Key? key,
    required this.nameOfFlag,
    required this.languageTitle,
    required this.options,
    required this.lang,
  }) : super(key: key);
  final String nameOfFlag;
  final String languageTitle;
  final AppOptions options;
  final String lang;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppOptions.update(context, options.copyWith(locale: Locale(lang!)));

        context.push(Routes.secondMain);
        sl<LocalSource>().setLocale(lang);
        sl<LocalSource>().setLangSelected(value: true);

      },
      child: ListTile(
        tileColor: ThemeColors.light.borderRadiusFirstColor,
        shape: AppUtils.kShapeRoundedAll12,
        leading: Image.asset(nameOfFlag),
        title: Text(
          languageTitle,
          style: context.textStyle.bodySubheadline,
        ),
      ),
    );
  }
}
