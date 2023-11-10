// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:ploff_kebab/src/config/theme/themes.dart';
// import 'package:ploff_kebab/src/core/constants/constants.dart';
// import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/core/utils/utils.dart';
// import 'package:ploff_kebab/src/data/models/get_category_product/test.dart';
//
//
// class CategoryCard extends StatelessWidget {
//   const CategoryCard({Key? key, required this.category}) : super(key: key);
//
//   final CategoriesWithModel? category;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: AppUtils.kPaddingAll16,
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: Colors.white,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              Text(
//                category?.title?.en??"",
//             ),
//             SizedBox(
//               height: 125,
//               child: ListView.separated(
//                 itemCount: category?.products?.length ?? 0,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) =>
//                     ProductItem(product: category?.products?[index]),
//                 padding: EdgeInsets.zero,
//                 separatorBuilder: (context, index) => Divider(
//                   height: 1,
//                   endIndent: 30,
//                   indent: 30,
//                   color: context.colorScheme.onBackground.withOpacity(0.2),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ProductItem extends StatelessWidget {
//   const ProductItem({Key? key, required this.product}) : super(key: key);
//   final ProductsWithModel? product;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 375,
//       height: 120,
//       child: DecoratedBox(
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
//         child: Padding(
//           padding: AppUtils.kPaddingAll16,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     width: 150,
//                     height: 24,
//                     child: Text(
//                       product?.title?.en ?? '',
//                       style: context.textStyle.regularSubheadline,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 239,
//                     height: 38,
//                     child: Text(
//                       product?.description?.en ?? '',
//                       style: context.textStyle.regularFootnote
//                           .copyWith(color: context.color.fourthBlack),
//                     ),
//                   ),
//                   AppUtils.kGap8,
//                   Expanded(
//                     child: Text(
//                       "${product?.outPrice?.moneyFormat} so'm",
//                       style: context.textStyle.regularSubheadline
//                           .copyWith(fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                 ],
//               ),
//               const Gap(8),
//               SizedBox(
//                 width: 88,
//                 height: 78,
//                 child: DecoratedBox(
//                   decoration: ShapeDecoration(
//                     image: product?.image?.isNotEmpty ?? false
//                         ? DecorationImage(
//                             image: NetworkImage(
//                                 Constants.imageUrl + (product?.image ?? '')))
//                         : const DecorationImage(
//                             image: AssetImage(AppImages.defaultProduct),
//                             fit: BoxFit.fill),
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: AppUtils.kBorderRadius8,
//                     ),
//                   ),
//                   child: CachedNetworkImage(
//                     imageUrl: (product?.image??''),
//                     width: 88,
//                     height: 88,
//                     fit: BoxFit.cover,
//                     errorWidget: (context, url, error) => const Icon(Icons.food_bank),
//                     placeholder: (context, url) => const Icon(
//                       Icons.no_food,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// //'https://www.foodandwine.com/thmb/l6vR_J16Fl0GXyLSb2uez2xnkDU=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/15-Rules-for-Great-Wine-and-Food-Pairings-FT-BLOG1023-f6db46229f8d4e2c81c94f8a85e3c50e.jpg'
//
// //"47 000 сум"
//
// // 'Своим именем чайханский плов обязан старой ташкентской традиции «ош»...',
//
// // state.categoryWithResponse?.categories?.length
//
// //' state.categoryWithResponse?.categories?.first.products?.first.outPrice.toString()??'
