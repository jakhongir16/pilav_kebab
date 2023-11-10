// import 'package:flutter/material.dart';
// import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/core/extension/language_extension.dart';
// import 'package:ploff_kebab/src/core/utils/utils.dart';
// import 'package:ploff_kebab/src/data/models/product/product_response_with_id.dart';
//
// class ProductIdWidget extends StatefulWidget {
//   ProductIdWidget({Key? key, required this.propertyModel}) : super(key: key);
//   final ProductResponseWithId propertyModel;
//   int chooseValueRadio = 0;
//   @override
//   State<ProductIdWidget> createState() => _ProductIdWidgetState();
// }
//
// class _ProductIdWidgetState extends State<ProductIdWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: AppUtils.kPaddingAll16,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(widget.propertyModel.title?.getLocalizedDescription() ?? ''),
//           AppUtils.kGap12,
//           ListView.separated(
//             itemCount: widget.propertyModel?.properties?[index].options?.length??0,
//             itemBuilder: (context, index) => Row(
//                 children: [
//                   Radio(
//                     value: index,
//                     groupValue: widget.chooseValueRadio,
//                     onChanged: (value){
//                       widget.chooseValueRadio = value!;
//                       setState(() {});
//                     },
//                   ),
//                   Text(widget.propertyModel.options?[index].title?.getLocalizedDescription() ?? '',
//                   style: context.textStyle.bodySubheadline.copyWith(
//                     fontSize: 14,
//                   ),
//                   ),
//                 ],
//               ),
//             separatorBuilder: (context, index) => Divider(
//               color: context.color.firstBlack.withOpacity(0.1),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
