import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/banners_widget.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/home_widget_appbar.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_category_list.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

part 'package:ploff_kebab/src/presentation/pages/main/home/mixin/home_mixin.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({
    super.key,
  });

  // final HomeBloc bloc;
  // final List<CategoryWithProductModel> category;

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> with TickerProviderStateMixin, HomeMixinView {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) => BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) {
          if (previous.categoryWithResponse != current.categoryWithResponse ||
              previous.isScrollingTop != current.isScrollingTop) {
            controllerTab = TabController(length: current.categoryWithResponse?.length ?? 0, vsync: this);
          }
          return true;
        },
        listener: (context, state) {
        listener(context: context, state: state, vsync: this);
        },
        builder: (context, state) {
          return Scaffold(
              backgroundColor: context.colorScheme.surface,
              resizeToAvoidBottomInset: false,
              body: VerticalScrollableTabView(
                autoScrollController: autoScrollController,
                tabController: controllerTab!,
                scrollbarThumbVisibility: false,
                listItemData: state.categoryWithResponse ?? [],
                eachItemChild: (object, index) => ProductCategoryList(categories: object),
                slivers: [
                  HomeWidgetAppBar(
                  tabController: controllerTab, innerBoxIsScrolled: true, data: state.categoryWithResponse ?? []),
                  AppUtils.kSliverGap12,
                  BannersWidget(
                    controller: _pageController,
                    bannerListener: _bannerListener,
                  ),
                  AppUtils.kSliverGap16,
                ],
              ));
        },
      );
}

///ProductSecondList(categories: state.categoryWithResponse?.categories?[state.currentIndex??0], index: state.currentIndex??0,)
/// Dont forget it to put it on its place
/// state.categoryWithResponse?.categories?[index??0]
// for(int i = 0; i< (state.categoryWithResponse?.categories??[]).length; i++)
// return ProductSecondList(
// categories: state.categoryWithResponse?.categories?[i],
//
// );
// for(int i = 0; i< (state.categoryWithResponse[in).length; i++)
//         SliverList(
//
//             delegate: SliverChildBuilderDelegate(
//                 (context, index) => ProductSecondList(categories: state.categoryWithResponse?[index]),
//           childCount: state.categoryWithResponse?.length,
//             ),
//
// ),
