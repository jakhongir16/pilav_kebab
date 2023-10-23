import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_phone_text_field.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_text_field.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/masked_text_input_formatter.dart';

part 'package:ploff_kebab/src/presentation/pages/auth/register/mixin/register_mixin.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> with RegisterMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
             // AppUtils.kGap24,
             // GestureDetector(
             //   onTap:(){
             //
             //   },
             //   child:  Icon(
             //     Icons.arrow_back_ios,
             //   ),
             // ),
             // AppUtils.kGap24,
              AppUtils.kGap44,
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              AppUtils.kGap24,
              Text(
            'Регистрация',
            style: context.textStyle.sfProDisplay,
          ),
         // const Gap(24),
              AppUtils.kGap24,
          Text(
            'Номер телефона',
            style: context.textStyle.sfProDisplay2,
            textAlign: TextAlign.right,
          ),
          const Gap(4),
          CustomTextField(
            focusedInBorder: OutlineInputBorder(
              borderRadius: AppUtils.kBorderRadius8,
              borderSide: BorderSide(
                color: context.color.borderRadiusSecondColor,
              )
            ),
            outlineInputBorder: OutlineInputBorder(
              borderRadius: AppUtils.kBorderRadius8,
              borderSide: BorderSide(
                 color: ThemeColors.light.borderRadiusSecondColor,
              ),

            ),
            controller: _phoneNumberController,
            fillColor: context.color.white,

            filled: true,



            inputFormatters: [
              MaskedTextInputFormatter(
                  mask: '## ### ## ##',
                  separator: '',
                  filter: RegExp('[0-9]'),

              ),
            ],
            onChanged: (value){

            },

            keyboardType: TextInputType.phone,
            prefixText: '+998 ',style: context.textStyle.sfProDisplay2,
            prefixStyle: context.textStyle.sfProDisplay2,


          ),
          const Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: context.color.borderRadiusSecondColor,
                maximumSize: const Size(343, 52),
                alignment: Alignment.center
              ),
              onPressed: (){
                context.push(Routes.otpPage);
              }, child: Text(
               context.tr("continue"),
            style: context.textStyle.sfProDisplay2,
          ))
        ]),
      ),
    );
  }
}

// hintText: '+998 ',

// prefixStyle: Theme.of(context).textTheme.titleMedium,
// style: Theme.of(context).textTheme.titleMedium,

// Icon(
//     AppIcons.back, color: ThemeColors.light.primaryText,)