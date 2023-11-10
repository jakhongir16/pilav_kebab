import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/extension/language_extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/core/utils/vertical_scrollable_tabbar_status.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/category_with_response.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_category_list.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomeWidgetAppBar extends StatelessWidget {
  const HomeWidgetAppBar({
    Key? key,
    required this.tabController,
    required this.innerBoxIsScrolled,
    required this.data,
  }) : super(key: key);
  final bool innerBoxIsScrolled;
  final List<CategoryModel>? data;
  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    final insertAnyColor = innerBoxIsScrolled ? context.color.secondaryText : context.color.secondaryText;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SliverAppBar(
          toolbarHeight: 104,
          pinned: true,
          automaticallyImplyLeading: false,
          actionsIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          systemOverlayStyle: innerBoxIsScrolled ?
          SystemUiOverlayStyle.dark
              : SystemUiOverlayStyle.light,
          backgroundColor: innerBoxIsScrolled
              ? context.theme.appBarTheme.backgroundColor
              : context.color.white,
          title: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      context.push(Routes.mapPage);
                    },
                    child: Row(
                      children: [
                        Icon(AppIcons.location, color: context.color.secondBlack,),
                        AppUtils.kGap6,
                        Text(context.tr('add_location'),
                        style: context.textStyle.sfProDisplay2,
                        ),
                        Icon(AppIcons.down, color: context.color.loadIndicator,),
                      ],
                    )),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    contentPadding: AppUtils.kPaddingAll8,
                    hintText: 'Поиск по всей еде',
                    hintStyle: TextStyle(color: context.color.thirdBlack),
                    border: const OutlineInputBorder(
                      borderRadius: AppUtils.kBorderRadius8,
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: context.color.thirdBlack,
                    ),
                    filled: true,
                    fillColor: context.colorScheme.surfaceVariant,
                    //innerBoxIsScrolled ? Colors.white.withOpacity(0.24)
                  ),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: Padding(
              padding: AppUtils.kPaddingAll16,
              child: TabBar(
                controller: tabController,
                isScrollable: true,
                //indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 0,
                indicatorColor: context.color.fourthBlack,
                indicator: BoxDecoration(
                    borderRadius: AppUtils.kBorderRadius8,
                    color: context.color.borderRadiusSecondColor),
                labelColor: context.color.fourthBlack,
                labelPadding: AppUtils.kLabelPadding,
                // unselectedLabelStyle: context.textStyle.sfProDisplay4,
                unselectedLabelColor: context.color.fourthBlack,
                // enableFeedback: true,
                tabs: data!
                    .map(
                      (e) =>
                      Tab(
                        height: 38,

                        child: Ink(
                          height: 38,

                          padding: AppUtils.kPaddingVer10Hor16,
                          decoration: BoxDecoration(
                              color: context.colorScheme.surfaceVariant,
                              borderRadius: AppUtils.kBorderRadius8),
                          child: Text(
                            e.title?.getLocalizedDescription() ?? '',
                            style: context.textStyle.sfProDisplay.copyWith(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                )
                    .toList(),
                onTap: (index){
                  VerticalScrollableTabBarStatus.setIndex(index);
                }
              ),
            ),
          ),

        );
      },
    );
  }
}
//VerticalScrollableTabBarStatus.setIndex
// VerticalScrollableTabBarStatus.setIndex