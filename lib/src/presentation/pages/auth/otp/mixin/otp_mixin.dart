
part of 'package:ploff_kebab/src/presentation/pages/auth/otp/mixin/otp_page.dart';


mixin OtpMixin on State<OtpPage> {
  late PinTheme defaultPinTheme;
  late PinTheme focusedPinTheme;
  late PinTheme submittedPinTheme;
  late final TextEditingController controller;
  // late final ConfirmLoginCodePhoneState state;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Colors.white,
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(10),
    );
    submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}
