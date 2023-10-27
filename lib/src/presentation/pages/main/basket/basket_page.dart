import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/components/buttons/bottom_navigation_button.dart';
import 'package:ploff_kebab/src/presentation/pages/main/basket/widgets/take_away.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: context.color.mainBackground,
      appBar: AppBar(

        backgroundColor: context.color.whiteBackground,
       title: Text(context.tr('basket'),
       style: context.textStyle.appBarTitle,
       ),
       centerTitle: true,
       actions: [
         IconButton(
           onPressed: (){

           },
           icon: Icon(AppIcons.delete,
           color: context.color.thirdBlack,
           ),
         )
       ],
      ),
      body: Stack(
children: [
  Align(
   alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children :  [
    CustomPaint(
      size: const Size(104, 104),
      painter: RPSCustomPainter(),
    ),
    AppUtils.kGap24,
    Text(
      context.tr("no_products_on_bin"),
      style: context.textStyle.sfProDisplay4,

    )
    ],
     )
  ),
],

      ),
      bottomNavigationBar: BottomNavigationButton(
        child: ElevatedButton(
          onPressed: (){

          },
          child: Text(context.tr('add_product')),
        ),
      ),
    );
  }
}
