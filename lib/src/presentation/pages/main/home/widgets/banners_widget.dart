import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';

import 'package:ploff_kebab/src/data/models/banner/banner_response.dart';
import 'package:ploff_kebab/src/presentation/bloc/banner/banner_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';

class BannersWidget extends StatefulWidget {
  const BannersWidget({
    super.key,
    required this.controller,
    required this.bannerListener,
    required this.bannerResponse,
    required this.currentIndex,
  });

  final PageController controller;
  final ValueNotifier<int> bannerListener;
  final BannerResponse? bannerResponse;
  final int currentIndex;

  //final List<BannerResponse> banners;

  @override
  State<BannersWidget> createState() => _BannersWidgetState();
}

class _BannersWidgetState extends State<BannersWidget> {

   int currentIndex = 0;
  @override
  Widget build(BuildContext context) =>
      SliverToBoxAdapter(
        child: SizedBox(
          height: 204,
          child: Material(
            borderRadius: AppUtils.kBorderRadius12,

                    child: Column(
                      children: [
                        SizedBox(
                          height: 175,
                          child: PageView.builder(
                            controller: widget.controller,
                            onPageChanged: (index) => context.read<HomeBloc>().add(BannerIndexEvent(index: currentIndex)),
                            itemBuilder: (_, index) =>
                                Padding(
                                  padding: AppUtils.kPaddingAll16,
                                  child: ClipRRect(
                                    borderRadius: AppUtils.kBorderRadius8,
                                    child: CachedNetworkImage(
                                      imageUrl: widget?.bannerResponse?.banners?[index]?.image??"",
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) => SizedBox(
                                        height: 160,
                                        child: Center(
                                          child: CircularProgressIndicator(
                                            color: context.colorScheme.primary,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            itemCount: widget.bannerResponse?.banners?.length,
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
                                    valueListenable: widget.bannerListener,
                                    builder: (_, i, __) =>
                                        BlocSelector<HomeBloc, HomeState, int>(
                                          selector: (state) => state.currentIndex??0,
                                          builder: (context, state){
                                          return AnimatedContainer(
                                            duration: const Duration(milliseconds: 300),
                                            height: 6,
                                            width: state == index ? 16 : 8,
                                            decoration: BoxDecoration(
                                              color:  state == index ?
                                                   context.theme.colorScheme.primary
                                                  : context.colorScheme.secondaryContainer,
                                              borderRadius: AppUtils.kBorderRadius55,
                                            ),
                                          );
                                          }

                                        ),

                                  ),
                              separatorBuilder: (_, __) => AppUtils.kGap4,
                              itemCount: widget?.bannerResponse?.banners?.length??0,
                            ),
                          ),
                        ),
                        AppUtils.kGap6
                      ],





            ),
          ),



        ),
      );


}

//'https://t4.ftcdn.net/jpg/04/95/28/65/360_F_495286577_rpsT2Shmr6g81hOhGXALhxWOfx1vOQBa.jpg'

// widget.bannerListener.value = index



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
