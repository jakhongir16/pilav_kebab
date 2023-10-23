import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/loading_widgets/modal_progress_hud.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/banners_widget.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/cashback_widget.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/home_appbar.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_fourth_list.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_list.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_second_list.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_third_list.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/services_widget.dart';

part 'mixin/home_mixin.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, HomeMixin {
  //final bool innerBoxIsScrolled = false;

  @override
  void initState() {
    initController(this);
    super.initState();
  }

  final bool child = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.colorScheme.surface,
        resizeToAvoidBottomInset: false,
        body: NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (_, __) => [
            HomeAppBar(
              controller: _tabController,
            ),
            AppUtils.kSliverGap12,
            BannersWidget(
              controller: _pageController,
              bannerListener: _bannerListener,
            ),
          ],
          body: SizedBox(
            height: 175,
            child: TabBarView(
              controller: _tabController,
              dragStartBehavior: DragStartBehavior.down,
              physics: const NeverScrollableScrollPhysics(),
              children: [
              CustomScrollView(
                // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  AppUtils.kSliverGap12,
                   ProductList(),
                   AppUtils.kSliverGap12,
                   ProductList(),
                  AppUtils.kSliverGap12,
                   ProductList(),
                  AppUtils.kSliverGap12,
                   ProductList(),
                ]
              ),

                const ModalProgressHUD(inAsyncCall: true, child: SizedBox()),
              ],
            ),
          ),
        ),
      );
}
