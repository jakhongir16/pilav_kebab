import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/components/awesome/src/loader5.dart';

import 'src/loader1.dart';
import 'src/loader2.dart';
import 'src/loader3.dart';
import 'src/loader4.dart';

const int awesomeLoader1 = 1;
const int awesomeLoader2 = 2;
const int awesomeLoader3 = 3;
const int awesomeLoader4 = 4;
const int awesomeLoader5 = 5;

class AwesomeLoader extends StatelessWidget {
  const AwesomeLoader({super.key, this.loaderType, this.color});

  final int? loaderType;
  final Color? color;

  int? _getAnimationLoaderType() => loaderType ?? awesomeLoader1;

  Color? _getColor(BuildContext context) =>
      color ?? Theme.of(context).colorScheme.secondary;
  Color? _backgroundColor(BuildContext context) => color ?? Theme.of(context).colorScheme.outline;
  Color? _indicatorColor(BuildContext context) => color ?? Theme.of(context).colorScheme.scrim;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 24,
        height: 24,
        child: _getLoader(context),
      );

  Widget _getLoader(BuildContext context) {
    switch (_getAnimationLoaderType()) {
      case awesomeLoader1:
        return Loader1(
          color: _getColor(context),
        );

      case awesomeLoader2:
        return Loader2(
          color: _getColor(context),
        );

      case awesomeLoader3:
        return Loader3(
          color: _getColor(context),
        );

      case awesomeLoader4:
        return Loader4(
          color: _getColor(context),
        );
      case awesomeLoader5:
        return Loader5(
         color: _indicatorColor(context),
         backgroundColor: _backgroundColor(context),
        );

      default:
        return Loader1(
          color: _getColor(context),
        );
    }
  }
}
