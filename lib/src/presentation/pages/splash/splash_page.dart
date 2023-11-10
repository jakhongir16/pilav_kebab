import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/bloc/splash/bloc/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(const SplashEvent());
  }
  
  @override
  Widget build(BuildContext context) => BlocListener<SplashBloc, SplashState>(
    listener: (context, state) {
      if(state.isTimerFinished){
        context.pushReplacementNamed(Routes.main);
      }
    },
    child: AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body:  Stack(
          children: [
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Positioned.fill(
                    child: Center(
                    child: Image.asset('assets/logo/kebab_logo.png')
                    )
                    ),

                ],
              ),
            ),
            Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Center(
                  child: CircularProgressIndicator(
                    color: context.color.borderRadiusSecondColor,
                  ),
                ))
          ],
        ),
      ),
    ),
  );
}