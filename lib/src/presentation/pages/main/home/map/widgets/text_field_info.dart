import 'package:flutter/material.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_text_field.dart';

class TextFieldInfo extends StatelessWidget {
  const TextFieldInfo({
    Key? key,
    required this.text,
    required this.controller
  }) : super(key: key);
  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.5,
      child: CustomTextField(
        controller: controller,
        hintText: "enterence".tr,
        filled: true,
        fillColor: context.color.otpColor,
        borderColor: context.color.otpColor,

      ),
    );
  }
}
