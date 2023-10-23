import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/pages/select_languages/widgets/language_tile_button.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(64),
            Image.asset(

                'assets/logo/kebab_logo_second.png',
              width: 148,
              height: 132,
            ),
            const Gap(48),
            Text('Выберите язык:',
            style: context.textStyle.regularHeadline,
            ),
            const Gap(12),
            LanguageTileButton(
              nameOfFlag: 'assets/images/uzbek.png',
              languageTitle: 'O`zbekcha',
              onTap: (){
               context.push(Routes.register);
              },
            ),
            const Gap(16),
            LanguageTileButton(
                nameOfFlag: 'assets/images/russian.png',
                languageTitle: 'Русский',
                onTap: (){
                 context.push(Routes.register);
                }),
            const Gap(16),
            LanguageTileButton(
                nameOfFlag: 'assets/images/english.png',
                languageTitle: 'English',
                onTap: (){
                  context.push(Routes.register);
                }),
          ],
        ),
      ),
    );
  }
}