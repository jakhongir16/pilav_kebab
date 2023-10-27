import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/pages/main/myorder/pages/active_orders_page.dart';
import 'package:ploff_kebab/src/presentation/pages/main/myorder/pages/history_orders_page.dart';

part 'mixin/order_mixin.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage ({Key? key}) : super(key: key);

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> with SingleTickerProviderStateMixin, OrderMixin {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    super.initStateController(this);
  }

  var selectedIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text(
        "Мои заказы",
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(
          56
        ),
        child: Padding(
          padding: AppUtils.kPaddingBottom12,
          child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: AppUtils.kBorderRadius12,
              ),
            color: context.color.mainBackground,
            child: TabBar(
              indicator: BoxDecoration(
                color: context.color.white,
                borderRadius: AppUtils.kBorderRadius8,
              ),
              padding: AppUtils.kPaddingAll4,
              controller: tabController,
              indicatorColor: context.color.white,
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(text: 'Активные заказы', height: 38,),
                Tab(text: 'История заказов', height: 38),
              ],
              onTap: (value) => selectedIndex.value = value,
            ),

          ),
        ),
      ),
    ),
    body: ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, value, child) => selectedIndex.value == 0
        ? const ActiveOrdersPage()
        : const HistoryOrdersPage(),
    ),
  );
}
