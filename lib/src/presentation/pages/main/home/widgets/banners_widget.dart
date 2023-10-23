import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({
    super.key,
    required this.controller,
    required this.bannerListener,
  });

  final PageController controller;
  final ValueNotifier<int> bannerListener;


  @override
  Widget build(BuildContext context) =>
      SliverToBoxAdapter(
        child: Material(
          borderRadius: AppUtils.kBorderRadius12,
          child: Column(
            children: [
            SizedBox(
              height: 175,
              child: PageView.builder(
              controller: controller,
              onPageChanged: (index) => bannerListener.value = index,
              itemBuilder: (_, index) =>
                  Padding(
                    padding: AppUtils.kPaddingAll16,
                    child: ClipRRect(
                      borderRadius: AppUtils.kBorderRadius8,
                      child: CachedNetworkImage(
                        imageUrl:
                        'https://t4.ftcdn.net/jpg/04/95/28/65/360_F_495286577_rpsT2Shmr6g81hOhGXALhxWOfx1vOQBa.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          ),
            ),
        SizedBox(
          height: 6,
          width: double.infinity,
          child: Center(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (_, index) =>
                  ValueListenableBuilder(
                    valueListenable: bannerListener,
                    builder: (_, i, __) =>
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 6,
                          width: 8,
                          decoration: BoxDecoration(
                        color:  i % 3 == index
                        ? Theme.of(context).colorScheme.primary
                        : context.colorScheme.secondaryContainer,
                    borderRadius: AppUtils.kBorderRadius55,
                    ),
                  ),

                  ),
              separatorBuilder: (_, __) => AppUtils.kGap4,
              itemCount: 3,
            ),
          ),
        ),
        AppUtils.kGap6
        ],
      ),



  ),



  );

}






// BoxDecoration(
// color: i % 3 == index
// ? context.colorScheme.primary
//     : context.colorScheme.primary.withOpacity(0.2),
// shape: BoxShape.circle,
// ),




// SliverList(
//
// delegate: SliverChildListDelegate(
// [
// Material(
// borderRadius: AppUtils.kBorderRadius12,
// child: PageView.builder(
// controller: controller,
// onPageChanged: (index) => bannerListener.value = index,
// itemBuilder: (_, index) => Padding(
// padding: AppUtils.kPaddingAll16,
// child: ClipRRect(
// borderRadius: AppUtils.kBorderRadius8,
// child: CachedNetworkImage(
// imageUrl:
// 'https://t4.ftcdn.net/jpg/04/95/28/65/360_F_495286577_rpsT2Shmr6g81hOhGXALhxWOfx1vOQBa.jpg',
// fit: BoxFit.cover,
// ),
// ),
// ),
// ),
// ),
// SizedBox(
// height: 6,
// width: double.infinity,
// child: Center(
// child: ListView.separated(
// scrollDirection: Axis.horizontal,
// shrinkWrap: true,
// itemBuilder: (_, index) => ValueListenableBuilder(
// valueListenable: bannerListener,
// builder: (_, i, __) => AnimatedContainer(
// duration: const Duration(milliseconds: 300),
// height: 6,
// width: 6,
// decoration: BoxDecoration(
// color: i % 3 == index
// ? context.colorScheme.primary
//     : context.colorScheme.primary.withOpacity(0.2),
// shape: BoxShape.circle,
// ),
// ),
// ),
// separatorBuilder: (_, __) => AppUtils.kGap4,
// itemCount: 3,
// ),
// ),
// ),
// ],
// ),
// );


// SliverList(
//
//   delegate: SliverChildListDelegate(
//     [
//       SizedBox(
//         height: 175,
//         child: PageView.builder(
//           controller: controller,
//           onPageChanged: (index) => bannerListener.value = index,
//           itemBuilder: (_, index) => Padding(
//             padding: AppUtils.kPaddingAll16,
//             child: ClipRRect(
//               borderRadius: AppUtils.kBorderRadius10,
//               child: CachedNetworkImage(
//                 imageUrl:
//                 'https://t4.ftcdn.net/jpg/04/95/28/65/360_F_495286577_rpsT2Shmr6g81hOhGXALhxWOfx1vOQBa.jpg',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ),
//       ),
//       SizedBox(
//         height: 6,
//         width: double.infinity,
//         child: Center(
//           child: ListView.separated(
//             scrollDirection: Axis.horizontal,
//             shrinkWrap: true,
//             itemBuilder: (_, index) => ValueListenableBuilder(
//               valueListenable: bannerListener,
//               builder: (_, i, __) => AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 height: 6,
//                 width: 6,
//                 decoration: BoxDecoration(
//                   color: i % 3 == index
//                       ? context.colorScheme.primary
//                       : context.colorScheme.primary.withOpacity(0.2),
//                   shape: BoxShape.circle,
//                 ),
//               ),
//             ),
//             separatorBuilder: (_, __) => AppUtils.kGap4,
//             itemCount: 3,
//           ),
//         ),
//       ),
//     ],
//   ),
// );

// Material(
// color: context.color.white,
// borderRadius: AppUtils.kBorderRadius12,
// child: CustomScrollView(
//
// child: SizedBox(
// height: 175,
// child: PageView.builder(
// controller: controller,
// onPageChanged: (index) => bannerListener.value = index,
// itemBuilder: (_, index) => Padding(
// padding: AppUtils.kPaddingAll16,
// child: ClipRRect(
// borderRadius: AppUtils.kBorderRadius10,
// child: CachedNetworkImage(
// imageUrl:
// 'https://t4.ftcdn.net/jpg/04/95/28/65/360_F_495286577_rpsT2Shmr6g81hOhGXALhxWOfx1vOQBa.jpg',
// fit: BoxFit.cover,
// ),
// ),
// ),
// ),
// ),
// ),
// ),
// )
// ),
// ),
// );
