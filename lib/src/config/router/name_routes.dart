part of 'app_routes.dart';

sealed class Routes {
  Routes._();

  static const String initial = '/';

  /// main
  static const String main = '/main';
  static const String secondMain = '/second_main';
  static const String internetConnection = '/internet_connection';

  /// profile
  static const String aboutUs = '/about_us';
  static const String settings = '/settings';

  /// auth
  static const String auth = '/auth';
  static const String confirmCode = '/confirm_code';
  static const String register = '/register';
  static const String login = '/login';
  static const String otpPage = '/otp_page';
  static const String otpRegisterPage = '/otp_register_page';
  static const String language = '/selectLanguage';
  static const String loginOtpPage = '/login_otp_page';
  /// map
  static const String mapPage = '/map_page';

  static const String product = '/product';

  /// home
  static const String infoProduct = '/info_product';
}
