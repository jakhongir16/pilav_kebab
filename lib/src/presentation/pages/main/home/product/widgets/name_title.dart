import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

class NameTitle extends StatelessWidget {

  const NameTitle({Key? key, required this.nameTitle}) : super(key: key);

  final String nameTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      nameTitle,
      style: context.textStyle.sfProDisplay.copyWith(
        fontSize: 17
      ),
    );
  }
}
