// import 'package:flutter/material.dart';
// import 'package:ploff_kebab/src/core/extension/extension.dart';
// import 'package:ploff_kebab/src/core/utils/utils.dart';
// import 'package:ploff_kebab/src/presentation/pages/main/home/example_data.dart';
//
// class CategorySection extends StatelessWidget {
//   const CategorySection({
//     Key? key,
//     required this.category,
//   }) : super(key: key);
//
//   final CategoryList category;
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       borderRadius: AppUtils.kBorderRadius12,
//       color: context.color.white,
//         child: Padding(
//           padding: AppUtils.kPaddingAll16,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildSectionTileHeader(context),
//               _buildFoodTileList(context),
//
//             ],
//           ),
//         ),
//
//     );
//   }
//
//   Widget _buildFoodTileList(BuildContext context) {
//     return Column(
//       children: List.generate(
//         category.foods.length,
//             (index) {
//           final food = category.foods[index];
//           bool isLastIndex = index == category.foods.length - 1;
//           return _buildFoodTile(
//             food: food,
//             context: context,
//             isLastIndex: isLastIndex,
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildSectionTileHeader(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 16),
//         _sectionTitle(context),
//         const SizedBox(height: 16),
//       ],
//     );
//   }
//
//   Widget _sectionTitle(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           category.title,
//           style: context.textStyle.sfProDisplay.copyWith(
//             fontSize: 22,
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget _sectionSubtitle(BuildContext context) {
//     return Text(
//       category.title!,
//       style: Theme.of(context).textTheme.subtitle2,
//     );
//   }
//
//   Widget _buildFoodTile({
//     required BuildContext context,
//     required bool isLastIndex,
//     required Food food,
//   }) {
//     return Column(
//       children: [
//         Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             _buildFoodDetail(food: food, context: context),
//             _buildFoodImage(food.imageUrl),
//           ],
//         ),
//         AppUtils.kGap16,
//         !isLastIndex ? const Divider(height: 16.0) : const SizedBox(height: 8.0)
//       ],
//     );
//   }
//
//   Widget _buildFoodImage(String url) {
//     return FadeInImage.assetNetwork(
//       placeholder: 'assets/transparent.png',
//       image: url,
//       width: 88,
//     );
//   }
//
//   Widget _buildFoodDetail({
//     required BuildContext context,
//     required Food food,
//   }) {
//     return Expanded(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(food.name, style: Theme.of(context).textTheme .subtitle1),
//           const SizedBox(height: 2),
//           Text(food.description,
//             style: context.textStyle.sfProDisplay2.copyWith(
//                 fontSize: 13,
//               ),
//             maxLines: 2,
//           ),
//
//           Row(
//             children: [
//               Text(
//                 "${food.price} ",
//                 style: Theme.of(context).textTheme.caption,
//               ),
//               const SizedBox(width: 8.0),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//
//
//
// }