import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/pages/main/myorder/widgets/rps_custom_order.dart';
class HistoryOrdersPage extends StatelessWidget {
  const HistoryOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                  AppUtils.kGap32,
                  Text(
                    context.tr("no_active_order"),
                    style: context.textStyle.sfProDisplay4,

                  )
                ],
              )
          ),
        ],

      ),

    );
  }
}
