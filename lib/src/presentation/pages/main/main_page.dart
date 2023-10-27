import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/main/main_bloc.dart';
import 'package:ploff_kebab/src/presentation/pages/main/basket/basket_page.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/home_page_view.dart';
import 'package:ploff_kebab/src/presentation/pages/main/myorder/myorder_page.dart';
import 'package:ploff_kebab/src/presentation/pages/main/profile/profile.dart';
import 'package:ploff_kebab/src/presentation/pages/main/widgets/custom_bottom_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MainBloc, MainState, BottomMenu>(
        selector: (state)=> state.bottomMenu,
        builder: (_, bottomMenu) => WillPopScope(
        onWillPop: () async {
            if(bottomMenu.index != 0){
            context.read<MainBloc>().add(MainEventChanged(BottomMenu.values[0]));
            return false;
            }
            return true;
        },
        child: Scaffold(
         body: IndexedStack(
            index: bottomMenu.index,
            children: const [
                HomePageView(),
                BasketPage(),
                MyOrderPage(),
                Profile(),
            ],
         ),
         bottomNavigationBar: CustomBottomBar(
          currentIndex: bottomMenu.index,
            onTap: (index){
               if(index == bottomMenu.index) {
                context.read<HomeBloc>().add(
                   const HomeScroll(isScrollingTop: true),
                );
                return;
               }
               context.read<MainBloc>()
               .add(MainEventChanged(BottomMenu.values[index]));
            },
            onScanTap: (){},
         ),
    ),
        ),
    );
  }
}
