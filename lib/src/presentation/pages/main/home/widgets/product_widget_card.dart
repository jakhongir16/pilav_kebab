// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:gap/gap.dart';
//
// import 'package:ploff_kebab/src/config/router/app_routes.dart';
// import 'package:ploff_kebab/src/config/theme/themes.dart';
// import 'package:ploff_kebab/src/core/constants/constants.dart';
// import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/core/utils/utils.dart';
// import 'package:ploff_kebab/src/data/models/product_model.dart';
//
// class ProductCardWidget extends StatelessWidget {
//   const ProductCardWidget({super.key, required this.productModel});
//
//   final ProductModel productModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: BorderRadius.circular(12),
//       onTap: () {
//         Navigator.pushNamed(
//           context,
//           Routes.product,
//           arguments: ProductArgs(
//             image: productModel.image,
//             description: productModel.description,
//             title: productModel.title,
//           ),
//         );
//         BlocProvider.of<ProductBloc>(context)
//             .add(GetProductEvent(id: productModel.id));
//       },
//       child: Padding(
//         padding: AppUtils.kPaddingAll16,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: 150,
//                   height: 24,
//                   child: Text(
//                     productModel.title.getLocalizedDescription(),
//                     style: context.textStyle.regularSubheadline,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 239,
//                   height: 38,
//                   child: Text(
//                     productModel.description.getLocalizedDescription(),
//                     style: context.textStyle.regularFootnote
//                         .copyWith(color: context.color.anotherBlack),
//                   ),
//                 ),
//                 const Gap(8),
//                 Text(
//                   "${productModel.outPrice.moneyFormat} ${context.tr("sum")}",
//                   style: context.textStyle.regularSubheadline
//                       .copyWith(fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//             const Gap(8),
//             CachedNetworkImage(
//               imageUrl: Constants.imageUrl + productModel.image,
//               width: 88,
//               height: 88,
//               fit: BoxFit.cover,
//               errorWidget: (context, url, error) => SvgPicture.asset(
//                 AppIcons.,
//                 height: 30,
//                 width: 45,
//               ),
//               placeholder: (context, url) => SvgPicture.asset(
//                 AppIcons.dish,
//                 height: 30,
//                 width: 45,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
