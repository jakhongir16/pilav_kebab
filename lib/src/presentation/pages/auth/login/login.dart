import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/auth_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/buttons/bottom_navigation_button.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_text_field.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/masked_text_input_formatter.dart';
import 'package:ploff_kebab/src/presentation/components/loading_widgets/modal_progress_hud.dart';
import 'package:ploff_kebab/src/presentation/components/snack/snack.dart';

part 'package:ploff_kebab/src/presentation/pages/auth/login/mixin/login_mixin.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with LoginMixin {
  @override
  Widget build(BuildContext context) => BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthUserNotFound) {
            context.pushNamed(
              Routes.register,
              extra: state.phone,
            );
          } else if (state is AuthClientPhone) {
            context.read<AuthBloc>().add(AuthSendMessageEvent(phone: _phoneNumberController.text));
          } else if (state is AuthSuccessState) {
            context.pushNamed(Routes.secondMain, extra: state.phone); //otpPage
          } else if (state is AuthErrorState) {
            showSnackBar(context, state.message);
          } else if (state is AuthLoadingState) {
            const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
        },
        child: Scaffold(
          backgroundColor: context.color.white,
          body: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) => previous is AuthLoadingState != current is AuthLoadingState,
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AuthLoadingState,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child:
                      Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                    AppUtils.kGap44,
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios)),
                    AppUtils.kGap24,
                    Text(
                      context.tr('phone_number'),
                      style: context.textStyle.sfProDisplay,
                    ),
                    // const Gap(24),
                    AppUtils.kGap24,
                    Text(
                      context.tr('phone_number'),
                      style: context.textStyle.sfProDisplay2,
                      textAlign: TextAlign.right,
                    ),
                    const Gap(4),
                    CustomTextField(
                      focusedInBorder: OutlineInputBorder(
                          borderRadius: AppUtils.kBorderRadius8,
                          borderSide: BorderSide(
                            color: context.color.borderRadiusSecondColor,
                          )),
                      outlineInputBorder: OutlineInputBorder(
                        borderRadius: AppUtils.kBorderRadius8,
                        borderSide: BorderSide(
                          color: context.color.borderRadiusSecondColor,
                        ),
                      ),
                      controller: _phoneNumberController,
                      fillColor: context.color.white,
                      filled: true,
                      inputFormatters: [
                        MaskedTextInputFormatter(
                          mask: '## ### ## ##',
                          separator: ' ',
                          filter: RegExp('[0-9]'),
                        ),
                      ],
                      onChanged: (value) {
                        context.read<AuthBloc>().add(
                              AuthPhoneAlterEvent(value ?? ''),
                            );
                      },
                      keyboardType: TextInputType.phone,
                      prefixText: '+998 ',
                      style: context.textStyle.sfProDisplay2,
                      prefixStyle: context.textStyle.sfProDisplay2,
                    ),
                  ]),
                ),
              );
            },
          ),
          bottomNavigationBar: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) => previous is AuthPhoneState != current is AuthPhoneState,
            builder: (_, state) => BottomNavigationButton(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: context.color.borderRadiusSecondColor,
                    maximumSize: const Size(343, 52),
                    alignment: Alignment.center),
                onPressed: state is AuthPhoneState
                    ? () {
                        context.read<AuthBloc>().add(
                              AuthCheckMessageEvent(
                                _phoneNumberController.text,
                                context,
                              ),
                            );
                      }
                    : null,
                child: Text(
                  context.tr("continue"),
                  style: context.textStyle.sfProDisplay2,
                ),
              ),
            ),
          ),
        ),
      );
}

class LoginPageArg {
  final String phoneNumber;

  const LoginPageArg({required this.phoneNumber});
}
//'+998${_phoneNumberController.text}'

//listenWhen:(previous, current) => previous.isNotFound != current.isNotFound,
//LoginPageArg(phoneNumber: '+998${_phoneNumberController.text}')
////_phoneNumberController.text '+998${_phoneNumberController.text}'
//       else if(state.isNotFound ==false) {
//   context.push(
//   Routes.otpPage,
//   extra: '+998${_phoneNumberController.text.replaceAll(' ', '')}',);}},

// () {
// context.read<AuthBloc>()
//     .add(
// PhoneEvent(
// phoneRequest: CustomerPhoneRequest(
// phone: '+998${_phoneNumberController.text}',
// ),
// ),
// );
// },
