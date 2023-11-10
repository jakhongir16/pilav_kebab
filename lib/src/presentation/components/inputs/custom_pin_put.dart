import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';

class CustomPinPut extends StatelessWidget {
  const CustomPinPut({
    super.key,
    this.onComplete,
    this.controller,
    this.borderRadius,
  });

  final void Function(String)? onComplete;
  final TextEditingController? controller;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 70,
      textStyle: const TextStyle(),
      decoration: BoxDecoration(
        color: context.color.otpColor,
        borderRadius: borderRadius,
        border: Border.all(
          color: context.color.borderRadiusSecondColor, //context.colorScheme.outline
        ),
      ),
    );

    return Pinput(
      length: 6,
      autofocus: true,
      controller: controller,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
      listenForMultipleSmsOnAndroid: true,
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      defaultPinTheme: defaultPinTheme,
      submittedPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: context.color.otpColor,                              //context.colorScheme.background,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: context.color.otpColor),
        ),
      ),
      errorPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: context.color.otpColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: context.colorScheme.error),
        ),
      ),
      onCompleted: onComplete,
    );
  }
}
