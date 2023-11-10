import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/pages/main/profile/widgets/profile_widget_item.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr('profile'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AppUtils.kGap12,
          ListTile(
            onTap: () {},
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),

            ),
            tileColor: context.color.white,
            trailing: Padding(
              padding: const EdgeInsets.only(right: 6),
              child: SizedBox(
                width: 20,
                height: 20,
                child:  Icon(
                  AppIcons.edit,
                  color: context.color.loadIndicator,
                ),
              ),
            ),
            title: Text(
              localSource.fullName,
              style: context.textStyle.appBarTitle,
            ),
            subtitle: Text(
              localSource.phone,
              style: context.textStyle.regularSubheadline
                  .copyWith(color: context.color.secondBlack),
            ),
          ),
          AppUtils.kGap12,
          ClipRRect(
            borderRadius: AppUtils.kBorderRadius12,
            child: Material(
              color: context.theme.cardColor,
              shape: const RoundedRectangleBorder(
                borderRadius: AppUtils.kBorderRadius12,
              ),
              child: Column(
                children: [
                  ProfileItemWidget(
                    icon: const Icon(
                      AppIcons.location,
                    ),
                    text: context.tr('addresses'),
                    onTap: () {},
                  ),
                  Padding(
                    padding: AppUtils.kPaddingHorizontal16,
                    child: Divider(
                      height: 0.5,
                      color: context.color.firstBlack.withOpacity(0.1),
                    ),
                  ),
                  ProfileItemWidget(
                    icon: Icon(
                      AppIcons.location_pin,
                       color: context.color.fourthBlack,),
              text: context.tr('branches'),
              onTap: () {},
            ),

                  Padding(
                    padding: AppUtils.kPaddingHorizontal16,
                    child: Divider(
                      height: 0.5,
                      color: context.color.firstBlack.withOpacity(0.1),
                    ),
                  ),
                  ProfileItemWidget(
                    icon: const Icon(
                      AppIcons.settings,
                    ),
                    text: context.tr('settings'),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.settings,
                      );
                    },
                  ),
                  Padding(
                    padding: AppUtils.kPaddingHorizontal16,
                    child: Divider(
                      height: 0.5,
                      color: context.color.firstBlack.withOpacity(0.1),
                    ),
                  ),
                  ProfileItemWidget(
                    icon: const Icon(
                      AppIcons.about,
                    ),
                    text: context.tr('service'),
                    onTap: () {

                    },
                  ),
                  Padding(
                    padding: AppUtils.kPaddingHorizontal16,
                    child: Divider(
                      height: 0.5,
                      color: context.color.firstBlack.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
