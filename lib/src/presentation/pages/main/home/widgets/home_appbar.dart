// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:go_router/go_router.dart';
// import 'package:ploff_kebab/src/config/router/app_routes.dart';
// import 'package:ploff_kebab/src/config/theme/themes.dart';
// import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/core/utils/utils.dart';
// import 'package:ploff_kebab/src/presentation/components/loading_widgets/slide_easy.dart';
// import 'package:ploff_kebab/src/presentation/pages/main/home/example_data.dart';
// import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_category_list.dart';
//
// class HomeAppBar extends StatefulWidget {
//   const HomeAppBar({
//     super.key,
//     required this.controller,
//     // required this.onTap,
//   });
// //  required this.controller,
//   // required this.innerBoxIsScrolled,
//   // final bool innerBoxIsScrolled;
//   final TabController controller;
//   // final ValueChanged<int>? onTap;
//
//   // var selectedIndex = ValueNotifier<int>(0);
//
//   @override
//   State<HomeAppBar> createState() => _HomeAppBarState();
// }
//
// class _HomeAppBarState extends State<HomeAppBar> {
//   int selectIndex = 0;
//   bool selectedTabBar = false;
//   final List<ProductCategoryList> data = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       toolbarHeight: 104,
//       pinned: true,
//       automaticallyImplyLeading: false,
//       bottom: PreferredSize(
//         preferredSize: const Size.fromHeight(56),
//         child: Padding(
//           padding: AppUtils.kPaddingAll16,
//           child: TabBar(
//             controller: widget.controller,
//             onTap: (index) {
//               selectIndex = index;
//               setState(() {});
//             },
//             isScrollable: true,
//             indicatorSize: TabBarIndicatorSize.tab,
//             indicatorColor: context.color.fourthBlack,
//             indicator: BoxDecoration(
//                 borderRadius: AppUtils.kBorderRadius8,
//                 color: false
//                     ? context.color.otpColor
//                     : context.color.borderRadiusSecondColor),
//             labelColor: context.color.fourthBlack,
//             unselectedLabelStyle: context.textStyle.sfProDisplay4,
//             unselectedLabelColor: context.color.fourthBlack,
//             enableFeedback: true,
//             tabs: data.map((e) {
//               return Tab(text: e.title);
//             }).toList(),
//           ),
//         ),
//       ),
//       title: SizedBox(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GestureDetector(
//                 onTap: () {
//                   context.push(Routes.mapPage);
//                 },
//                 child: Text('Yandex')),
//             const SizedBox(
//               height: 12,
//             ),
//             TextField(
//               style: const TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.w500,
//               ),
//               decoration: InputDecoration(
//                 contentPadding: AppUtils.kPaddingAll8,
//                 hintText: 'Поиск по всей еде',
//                 hintStyle: TextStyle(color: context.color.thirdBlack),
//                 border: const OutlineInputBorder(
//                   borderRadius: AppUtils.kBorderRadius8,
//                   borderSide: BorderSide.none,
//                 ),
//                 prefixIcon: Icon(
//                   Icons.search,
//                   color: context.color.thirdBlack,
//                 ),
//                 filled: true,
//                 fillColor: context.colorScheme
//                     .surfaceVariant, //innerBoxIsScrolled ? Colors.white.withOpacity(0.24)
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
