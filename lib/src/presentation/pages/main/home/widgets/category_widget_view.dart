// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ploff_kebab/src/core/constants/constants.dart';
// import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/core/utils/utils.dart';
// import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
// import 'package:ploff_kebab/src/presentation/pages/main/home/widgets/product_list_card.dart';
//
// class CategoryWidgetView extends StatelessWidget {
//   const CategoryWidgetView({Key? key,
//     required this.index,
//   }) : super(key: key);
//   final int index;
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: context.color.white,
//       borderRadius: AppUtils.kBorderRadius12,
//       child: BlocBuilder<HomeBloc, HomeState>(
//         builder: (context, state) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: List<Widget>.generate(
//                 (state.categoryWithResponse?.categories?[index]?.products)!.length,
//                     (index) =>
//                 index == 0
//                     ? Padding(
//                   padding: AppUtils.kPaddingHor14Ver16,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         state.categoryWithResponse?.categories?[index].title?.en ?? "", //?.title?.en??
//                         style: context.textStyle.sfProDisplay.copyWith(
//                           fontSize: 22,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//
//               :  SliverList.separated(
//                  itemCount: state.categoryWithResponse?.categories?[index].products?.length??0,
//                    itemBuilder: (context, index){
//                            final goods = state.categoryWithResponse!.categories?[this.index].products?[index];
//                    HomeProductItem(
//                    title: goods?.title?.en??"",
//                    description: goods?.description?.en??"",
//                    price: goods?.outPrice.toString()??"",
//                    urlImage: "${Constants.imageUrl}${goods?.image}",
//                    );
//                    }, separatorBuilder: (BuildContext context, int index) {
//                     return AppUtils.kDivider;
//                    },
//                )
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
