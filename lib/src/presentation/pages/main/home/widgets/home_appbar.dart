import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/components/loading_widgets/slide_easy.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({
    super.key,
    required this.controller,
  });

  // required this.innerBoxIsScrolled,
  // final bool innerBoxIsScrolled;
  final TabController controller;

  // var selectedIndex = ValueNotifier<int>(0);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  int selectIndex = 0;
  bool selectedTabBar = false;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        collapsedHeight: 150,
        expandedHeight: 100,

        pinned: true,
        floating: true,
        centerTitle: false,
        forceElevated: true,
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: AppUtils.kBorderRadius16,
            ),
            child: Column(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // AppUtils.kGap12,
                  Padding(
                    padding: const EdgeInsets.only(right: 125),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          AppIcons.location,
                          color: context.color.secondBlack,
                        ),
                        AppUtils.kGap6,
                        Text(
                          'Массив Бешягач 19/30',
                          style: context.textStyle.sfProDisplay2,
                        ),
                        IconButton(
                          // style: style,
                          onPressed: () {},
                          icon: Icon(
                            AppIcons.down,
                            color: context.colorScheme.shadow,
                          ),
                        ),
                      ],
                    ),
                  ),
                 // AppUtils.kGap12,
                  Padding(
                    padding: AppUtils.kPaddingL16T4R16B12,
                    child: TextField(
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
                        fillColor: context.colorScheme
                            .surfaceVariant, //innerBoxIsScrolled ? Colors.white.withOpacity(0.24)
                      ),
                    ),
                  ),
                  Padding(
                    padding: AppUtils.kPaddingAll16,
                    child: SizedBox(
                      height: 40,
                      child: TabBar(
                        onTap: (index) {
                          selectIndex = index;
                        },
                        isScrollable: true,
                        controller: widget.controller,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: context.color.fourthBlack,
                        indicatorColor: context.color.otpColor,

                        indicator: BoxDecoration(
                            borderRadius: AppUtils.kBorderRadius8,
                            color: selectedTabBar
                                ? context.color.otpColor
                                : context.color.borderRadiusSecondColor),
                        unselectedLabelStyle: context.textStyle.sfProDisplay4,
                        unselectedLabelColor: context.color.fourthBlack,
                        enableFeedback: true,
                        tabs: const [
                          Tab(child: Text("Популярный блюда")),
                          Tab(child: Text("Плов")),
                          Tab(child: Text("Шашлык")),
                          Tab(child: Text("Другое")),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}

// TabBar(
// physics: const ScrollPhysics(),
// controller: controller,
// indicator: BoxDecoration(
// color: context.color.borderRadiusSecondColor,
// borderRadius: AppUtils.kBorderRadius8,
// ),
// indicatorColor: context.color.secondBlack,
// labelColor: Colors.black,
// indicatorSize: TabBarIndicatorSize.tab,
// tabs: [
// Tab(text: 'Популярные блюда', height: 22),
// Tab(text: 'Плов', height: 22),
// Tab(text: 'Шашлык', height: 22),
// ],
// ),

// TabBar(
// indicator: BoxDecoration(
// color: context.color.white,
// borderRadius: AppUtils.kBorderRadius8,
// ),
// padding: AppUtils.kPaddingAll4,
// controller: tabController,
// indicatorColor: context.color.white,
// labelColor: Colors.black,
// indicatorSize: TabBarIndicatorSize.tab,
// tabs: const [
// Tab(text: 'Активные заказы', height: 38,),
// Tab(text: 'История заказов', height: 38),
// ],
// onTap: (value) => selectedIndex.value = value,
// ),
// SliverToBoxAdapter(
// child: Category(),
// )

// TabBar(
//   indicator: BoxDecoration(
//     color: context.color.borderRadiusSecondColor,
//     borderRadius: AppUtils.kBorderRadius8,
//
//   ),
//   padding: AppUtils.kPaddingAll16,
//
// ),
