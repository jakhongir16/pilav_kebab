import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_pin_put.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/custom_text_field.dart';
import 'package:ploff_kebab/src/presentation/components/inputs/masked_text_input_formatter.dart';

part 'package:ploff_kebab/src/presentation/pages/otp/mixin/otp_mixin.dart';

// part 'package:ploff_kebab/src/presentation/pages/otp/mixin/otp_mixin.dart';


class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> with OtpMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [

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
              AppUtils.kGap52,
              const CustomPinPut(
              borderRadius: AppUtils.kBorderRadius8),

              const Spacer(),
              Center(
                child: Text(

                  'Отправить код еще раз',
                  style: context.textStyle.sfProDisplay3,

                ),
              ),
              AppUtils.kGap16,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: context.color.borderRadiusSecondColor,
                      maximumSize: const Size(343, 52),
                      alignment: Alignment.center
                  ),
                  onPressed: (){
                    context.push(Routes.register);
                  }, child: Text(
                context.tr("continue"),
                style: context.textStyle.sfProDisplay2,
              ))
            ]),
      ),
    );
  }
}


// AppUtils.kGap24,
// Text(
// 'Номер телефона',
// style: context.textStyle.sfProDisplay2,
// textAlign: TextAlign.right,
// ),
// AppUtils.kGap4,
// CustomTextField(
// focusedInBorder: OutlineInputBorder(
// borderRadius: AppUtils.kBorderRadius8,
// borderSide: BorderSide(
// color: context.color.borderRadiusSecondColor,
// )
// ),
// outlineInputBorder: OutlineInputBorder(
// borderRadius: AppUtils.kBorderRadius8,
// borderSide: BorderSide(
// color: ThemeColors.light.borderRadiusSecondColor,
// ),
//
// ),
// controller: _phoneNumberController,
// fillColor: context.color.white,
//
// filled: true,
//
//
//
// inputFormatters: [
// MaskedTextInputFormatter(
// mask: '## ### ## ##',
// separator: '',
// filter: RegExp('[0-9]'),
//
// ),
// ],
// onChanged: (value){
//
// },
//
// keyboardType: TextInputType.phone,
// prefixText: '+998 ',style: context.textStyle.sfProDisplay2,
// prefixStyle: context.textStyle.sfProDisplay2,
//
//
// ),