// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gap/gap.dart';
// import 'package:ploff_kebab/src/core/constants/constants.dart';
// import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/core/extension/language_extension.dart';
// import 'package:ploff_kebab/src/core/utils/utils.dart';
// import 'package:ploff_kebab/src/data/models/get_category_product/category_with_products.dart';
// import 'package:ploff_kebab/src/data/models/product_model.dart';
// import 'package:ploff_kebab/src/domain/repositories/category_repository.dart';
// import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
//
// class ProductThirdList extends StatelessWidget {
//   const ProductThirdList({Key? key,
//   required this.productModel}) : super(key: key);
//   final CategoryWithProducts productModel;
//
//   @override
//   Widget build(BuildContext context) {
//
//         return BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, index){
//           return Padding(
//             padding: AppUtils.kPaddingAll16,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 150,
//                       height: 24,
//                       child: Text(
//                         productModel.title.getLocalizedDescription(),
//                         style: context.textStyle.regularSubheadline,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 239,
//                       height: 38,
//                       child: Text(
//                         productModel.description.getLocalizedDescription(),
//                         style: context.textStyle.regularFootnote
//                             .copyWith(color: context.color.thirdBlack),
//                       ),
//                     ),
//                     const Gap(8),
//                     Text(
//                       "${productModel.products[index].outPrice.moneyFormat} ${context.tr("sum")}",
//                       style: context.textStyle.regularSubheadline
//                           .copyWith(fontWeight: FontWeight.w600),
//                     ),
//                   ],
//                 ),
//                 const Gap(8),
//                 CachedNetworkImage(
//                     imageUrl: Constants.imageUrl + productModel.image,
//                     width: 88,
//                     height: 88,
//                     fit: BoxFit.cover,
//                     errorWidget: (context, url, error) => const  Icon(
//                       Icons.coffee,
//                     ),
//                     placeholder: (context, url) => const Icon(Icons.error,)
//                 )
//               ],
//             ),
//
//           ),
//     );
//
//           }
//
//
//
//
//
//
//
//   }
// }
