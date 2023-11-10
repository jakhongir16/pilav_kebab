import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/confirm/confirm_code_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/buttons/bottom_navigation_button.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_pin_put.dart';

part 'package:ploff_kebab/src/presentation/pages/auth/otp/mixin/otp_mixin.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key, required this.phone}) : super(key: key);

  final String phone;

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> with OtpMixin {
  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
    value: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
    child: BlocListener<ConfirmCodeBloc, ConfirmCodeState>(
      listener: (_, state) {
        if (state is ConfirmSuccess) {
          context.goNamed(Routes.secondMain);
        } else if (state is ConfirmCodeLoadingState) {
          const CircularProgressIndicator.adaptive();
        }
      },
      child: Scaffold(
        backgroundColor: context.color.white,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
            AppUtils.kGap44,
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios)),
            AppUtils.kGap24,
            Text(
              context.tr('otp'),
              style: context.textStyle.sfProDisplay,
            ),
            // const Gap(24),
            AppUtils.kGap52,
            CustomPinPut(
              borderRadius: AppUtils.kBorderRadius8,
              controller: controller,
              onComplete: (pin) {
                if (pin.length == 6) {
                  context.read<ConfirmCodeBloc>().add(
                    ConfirmCodeCheckMessageEvent(
                      phone: widget.phone,
                      code: controller.text,
                    ),
                  );
                }
              },
            ),

            const Spacer(),
            Center(
              child: Text(
                context.tr('send_otp_again'),
                style: context.textStyle.sfProDisplay3,
              ),
            ),
            AppUtils.kGap16,
          ]),
        ),
        bottomNavigationBar: BlocBuilder<ConfirmCodeBloc, ConfirmCodeState>(
          builder: (context, state) => BottomNavigationButton(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: context.color.borderRadiusSecondColor,
                  maximumSize: const Size(343, 52),
                  alignment: Alignment.center),
              onPressed: state is AuthPhoneState
                  ? () {
                context.read<ConfirmCodeBloc>().add(
                  ConfirmCodeCheckMessageEvent(phone: widget.phone, code: controller.text),
                );
              }
                  : () {
                context
                    .read<ConfirmCodeBloc>()
                    .add(ConfirmCodeRegisterEvent(phone: widget.phone, code: controller.text));
              },
              child: Text(
                context.tr("continue"),
                style: context.textStyle.sfProDisplay2,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

