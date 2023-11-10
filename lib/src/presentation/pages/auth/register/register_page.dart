import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_register_request.dart';
import 'package:ploff_kebab/src/presentation/bloc/auth/customer_register/customer_register_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/buttons/bottom_navigation_button.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_text_field.dart';
import 'package:ploff_kebab/src/presentation/components/loading_widgets/modal_progress_hud.dart';
import 'package:ploff_kebab/src/presentation/components/snack/snack.dart';
import 'package:ploff_kebab/src/presentation/pages/auth/login/login.dart';

part 'package:ploff_kebab/src/presentation/pages/auth/register/mixin/register_mixin.dart';

class RegisterPage extends StatefulWidget {

  const RegisterPage({
    Key? key,
    required this.phone,

  }) : super(key: key);
  final String phone;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with RegisterMixin {
  void submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    // String phone = ModalRoute.of(context)!.settings.arguments as String;
    return BlocConsumer<CustomerRegisterBloc, CustomerRegisterState>(
      listener: (_, state) {
        if (state is CustomerRegisterSuccessState) {
          context.pushNamed(
            Routes.otpPage,
            extra: widget.phone,
          );
        } else if(state is CustomerRegisterConfirmSuccess){
          context.pushNamed(
            Routes.otpPage,
          );
        } else if(state is CustomerRegisterErrorState){
          showSnackBar(context, state.message);
        }
        //         context.read<CustomerRegisterBloc>().add(
        // GetRegisterCustomerEvent(phone: _phoneNumberController.text, name: _fullNameController.text)
        // );
      },
      builder: (_, state) => Scaffold(
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
              context.tr('name_surname'),
              style: context.textStyle.sfProDisplay,
            ),
            // const Gap(24),
            AppUtils.kGap24,
            Text(
              context.tr('name_surname'),
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
                  color: ThemeColors.light.borderRadiusSecondColor,
                ),
              ),
              controller: _fullNameController,
              fillColor: context.color.white,
              autofocus: true,
              filled: true,
              key: formKey,
              validator: (value) {
                if (value!.isEmpty) {
                  return context.tr('enter_name');
                }
                return '';
              },
              onChanged: (value) {
                context.read<CustomerRegisterBloc>().add(
                      RegisterNameAlterEvent(value ?? ''),
                    );
              },
              hintText: context.tr('write_name'),
              style: context.textStyle.sfProDisplay2,
              prefixStyle: context.textStyle.sfProDisplay2,
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationButton(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: context.color.borderRadiusSecondColor,
                maximumSize: const Size(343, 52),
                alignment: Alignment.center),
            onPressed: () {
              // _fullNameController.clear();
              // context.read<CustomerBloc>().add(CustomerCheckMessageEvent(_phoneNumberController.text));
              //    context.push(Routes.otpPage);
               context.read<CustomerRegisterBloc>().add(
                 CustomerRegisterCheckEvent(
                     userName: _fullNameController.text,
                     phone: widget.phone)
               );

              print('qaytarrish');
            },
            child: Text(
              context.tr("continue"),
              style: context.textStyle.sfProDisplay2,
            ),
          ),
        ),
      ),
    );
  }
}

///CustomerRegisterUserEvent
//'+998${_phoneNumberController.text}'
//final LoginPageArg arg;
// context.read<CustomerRegisterBloc>().add(
// NameEvent(
// nameRequest: CustomerRegisterRequest(
// name: _fullNameController.text,
// phone: widget.arg.phoneNumber,
// registrationSource: 'app${_registrationSource.text}',
// ),
// ),
// );