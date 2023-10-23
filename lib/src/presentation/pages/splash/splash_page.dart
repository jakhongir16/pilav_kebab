import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';

import 'package:ploff_kebab/src/core/extension/extension.dart';

import 'package:ploff_kebab/src/presentation/bloc/splash/bloc/splash_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/awesome/awesome_loader.dart';

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
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: ThemeColors.light.whiteBackground,
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
                  child: AwesomeLoader(
                    loaderType: awesomeLoader5,
                    color: ThemeColors.light.loadIndicator,
                  ),
                ))
          ],
        ),
      ),
    ),
  );
}