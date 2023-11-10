import 'package:chuck_interceptor/chuck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/category_with_response.dart';
import 'package:ploff_kebab/src/data/source/hive/map_locale_source.dart';
import 'package:ploff_kebab/src/data/source/local_source.dart';
import 'package:ploff_kebab/src/injector_container.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/confirm/confirm_code_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/customer_register/customer_register_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/main/main_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/map/map_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/product/product_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/splash/bloc/splash_bloc.dart';
import 'package:ploff_kebab/src/presentation/pages/auth/login/login.dart';
import 'package:ploff_kebab/src/presentation/pages/auth/login_otp/login_otp.dart';
import 'package:ploff_kebab/src/presentation/pages/auth/otp/mixin/otp_page.dart';
import 'package:ploff_kebab/src/presentation/pages/auth/otp/otp_page_just_view.dart';
import 'package:ploff_kebab/src/presentation/pages/auth/register/register_page.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/map/map_page.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/product/product_page.dart';
import 'package:ploff_kebab/src/presentation/pages/main/main_page.dart';
import 'package:ploff_kebab/src/presentation/pages/main/profile/widgets/settings/settings_page.dart';
import 'package:ploff_kebab/src/presentation/pages/select_languages/select_language.dart';
import 'package:ploff_kebab/src/presentation/pages/splash/splash_page.dart';

part 'name_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

final localSource = sl<LocalSource>();
final mapsLocale = sl<MapLocaleSource>();

final Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);

final GoRouter router = GoRouter(navigatorKey: rootNavigatorKey, initialLocation: Routes.initial, routes: <RouteBase>[
  GoRoute(
    path: Routes.initial,
    name: Routes.initial,
    builder: (_, __) => BlocProvider(
      create: (_) => sl<SplashBloc>(),
      child: const SplashPage(),
    ),
  ),
  GoRoute(
    path: Routes.main,
    name: Routes.main,
    builder: (_, __) => const SelectLanguage(),
  ),
  GoRoute(
    path: Routes.secondMain,
    name: Routes.secondMain,
    pageBuilder: (_, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 1200),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<MainBloc>(create: (_) => sl<MainBloc>()),
            BlocProvider<HomeBloc>(
                create: (_) => sl<HomeBloc>()
                  ..add(const GetCategoryEvent())
                  ..add(const GetBannerEvent())
                  ..add(const BannerIndexEvent())),
// BlocProvider(create: (_) => sl<BannerBloc>()..add(GetBannerEvent())),
          ],
          child: const MainPage(),
        ),
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            )),

// GoRoute(
//   path: Routes.product,
//   name: Routes.product,
//   builder: (_, __) => BlocProvider(
//     create: (_) => sl<ProductBloc>(),
//     child: const ProductPage(
//
//     ),
//   ),
// ),
  ),
  GoRoute(
    path: Routes.register,
    name: Routes.register,
    builder: (_, state) => BlocProvider(
      create: (_) => sl<CustomerRegisterBloc>(),
      child: RegisterPage(phone: state.extra! as String),
    ),
  ),
  GoRoute(
    path: Routes.login,
    name: Routes.login,
    builder: (_, state) => BlocProvider(create: (_) => sl<AuthBloc>(), child: const Login()),
  ),
  GoRoute(
    path: Routes.otpPage,
    name: Routes.otpPage,
    builder: (_, state) => BlocProvider(
      create: (context) => sl<ConfirmCodeBloc>(),
      child: OtpPage(phone: state.extra as String? ?? ''),
    ),
  ),
  GoRoute(
    path: Routes.loginOtpPage,
    name: Routes.loginOtpPage,
    builder: (_, state) => BlocProvider(
      create: (context) => sl<ConfirmCodeBloc>(),
      child: LoginOtpPage(phone: state.extra as String? ?? ''),
    ),
  ),

  GoRoute(
    path: Routes.mapPage,
    name: Routes.mapPage,
    builder: (_, __) => BlocProvider(
      create: (context) => sl<MapBloc>()..add(MapLoaded()),
      child: const MapPage(),
    ),
  ),
  GoRoute(
    path: Routes.infoProduct,
    name: Routes.infoProduct,
    builder: (_, state) {

      return BlocProvider(
        create: (context) => sl<ProductBloc>()..add(ReceiveModifierDataEvent(id: (state.extra ! as ProductModel).id??''))..add(ProductDataEvent(id: (state.extra ! as ProductModel).id??'')),
        child: ProductPage(products: state.extra ! as ProductModel),
      );
    },
  ),
  GoRoute(
    path: Routes.settings,
    name: Routes.settings,
    builder: (_, __) => const SettingsPage(),
  ),

]);
// ProductModelDetail productModelDetail = state.extra as ProductModelDetail;
// detailProduct: productModelDetail
// final GoRouter router = GoRouter(
//   navigatorKey: rootNavigatorKey,
//   initialLocation: Routes.language,
//   routes: <RouteBase>[
//
//     /// auth
//     // GoRoute(
//     //   path: Routes.auth,
//     //   name: Routes.auth,
//     //   builder: (_, ) => BlocProvider(
//     //     create: (_) => sl<AuthBloc>(),
//     //     child: const AuthPage(),
//     //   ),
//     // ),
//   ],
// );
// arg: state.extra as LoginPageArg,

class FadePageRoute<T> extends PageRouteBuilder<T> {
  FadePageRoute({required this.builder})
      : super(
          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) =>
              builder(context),
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
  final WidgetBuilder builder;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 1000);
}
