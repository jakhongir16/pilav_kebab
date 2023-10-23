part of 'package:ploff_kebab/src/presentation/pages/main/myorder/myorder_page.dart';

mixin OrderMixin on State<MyOrderPage> {
  late final TabController tabController;

  void initStateController(TickerProvider tickerProvider) {
    tabController = TabController(length: 2, vsync: tickerProvider);
  }

  @override
  void dispose(){
    tabController.dispose();
  }
}