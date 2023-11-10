// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:ploff_kebab/src/config/theme/themes.dart';
// import 'package:ploff_kebab/src/core/constants/constants.dart';
// import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/core/utils/utils.dart';
// import 'package:ploff_kebab/src/data/models/get_category_product/category_with_json.dart';
//
// class ProductSecondList extends StatelessWidget {
//   const ProductSecondList({
//     Key? key,
//     required this.categories,
//     required this.index,
//   }) : super(key: key);
//   final Categories? categories;
//   final int index;
//   @override
//   Widget build(BuildContext context) {
//     return SliverList.separated(
//       itemBuilder: (_, index) => Padding(
//           padding: const EdgeInsets.only(bottom: 10, top: 10),
//           child: Material(
//             color: context.color.white,
//             borderRadius: AppUtils.kBorderRadius12,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//               Padding(
//               padding: AppUtils.kPaddingHor14Ver16,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     categories?.title?.en??"",//?.title?.en??
//                     style: context.textStyle.sfProDisplay.copyWith(
//                       fontSize: 22,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//                     ProductItem(products: categories?.products?[index]),
//
//       ),
//     ),
//     ),
//               ]
//
//           ),
//
//       separatorBuilder: (_, __) => AppUtils.kDivider2,
//       itemCount: categories?.products?.length ?? 0,
//     );
//   }
// }
//
// //
// // ProductItem(products: categories?.products?[index]),
// //category?.products?.length??0
// class ProductItem extends StatelessWidget {
//   const ProductItem({
//     Key? key,
//   required this.products,
//   }) : super(key: key);
//  final Products? products;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       ListTile(
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               products?.title?.en??"",
//               style: context.textStyle.sfProDisplay4.copyWith(
//                 color: context.color.primaryText,
//               ),
//               textAlign: TextAlign.left,
//             ),
//             Text(
//               products?.description?.en??"",
//               style: context.textStyle.sfProDisplay2.copyWith(
//                 color: context.color.thirdBlack,
//               ),
//             ),
//           ],
//         ),
//         subtitle: Text(
//         '${products?.outPrice} ${context.tr('sum')}',
//           style: context.textStyle.sfProDisplay.copyWith(
//             fontSize: 15,
//           ),
//         ),
//         trailing: SizedBox(
//           width: 88,
//           height: 88,
//           child: Material(
//             borderRadius: AppUtils.kBorderRadius8,
//
//             child: ClipRect(
//
//               child: CachedNetworkImage(
//                 imageUrl: '${Constants.imageUrl}${products?.image}',
//                 width: 88,
//                 height: 88,
//                 fit: BoxFit.cover,
//                 errorWidget: (context, url, error) => const Image(image: AssetImage(AppImages.defaultProduct),
//     fit: BoxFit.fill),
//
//               ),
//             ),
//           ),
//         ),
//       ),
//     ]);
//   }
// }
// // ??""
// //'${products?.outPrice} ${context.tr('sum')}'
// // Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// // ListTile(
// // title: Column(
// // crossAxisAlignment: CrossAxisAlignment.start,
// // children: [
// // Text(
// // categories?.products?[index].title?.en??"",
// // style: context.textStyle.sfProDisplay4.copyWith(
// // color: context.color.primaryText,
// // ),
// // textAlign: TextAlign.left,
// // ),
// // Text(
// // categories?.products?[index].description?.en??"",
// // style: context.textStyle.sfProDisplay2.copyWith(
// // color: context.color.thirdBlack,
// // ),
// // ),
// // ],
// // ),
// // subtitle: Text(
// // '${categories?.products?[index].outPrice} ${context.tr('sum')}',
// // style: context.textStyle.sfProDisplay.copyWith(
// // fontSize: 15,
// // ),
// // ),
// // trailing: SizedBox(
// // width: 88,
// // height: 88,
// // child: Material(
// // borderRadius: AppUtils.kBorderRadius8,
// //
// // child: ClipRect(
// //
// // child: CachedNetworkImage(
// // imageUrl: '${Constants.imageUrl}${categories?.products?[index]?.image}',
// // width: 88,
// // height: 88,
// // fit: BoxFit.cover,
// // errorWidget: (context, url, error) => const Image(image: AssetImage(AppImages.defaultProduct),
// // fit: BoxFit.fill),
// //
// // ),
// // ),
// // ),
// // ),
// // ),
// // ]),