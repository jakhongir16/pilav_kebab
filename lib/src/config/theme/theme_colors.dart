part of 'themes.dart';

///  A set of colors for the entire app.
const colorLightScheme = ColorScheme.light(
  primary: Color(0xFFFFCC00),                         //0xff2AA2C8
  surface: Color(0xFFFAFAFA),
  onSurface: Color(0xFF242424),
  secondary: Color(0xFF69D7C7),
  onSecondary: Color(0xFF616161),
  error: Color(0xFFD93F2F),
  surfaceVariant: Color(0xFFF5F5F5),
  secondaryContainer: Color(0xFFF0F0F0),
  onBackground: Color(0xFFF5F5F5), //242424
  outline: Color(0xFFF5F5F5),
  shadow: Color(0xFF9AA6AC),
  outlineVariant: Color(0xFFFFCC00),
  background: Color(0xFFF5F5F5),
);

const colorDarkScheme = ColorScheme.dark(
  primary: Color(0xff2AA2C8),
  surface: Color(0xFFF7F9FC),
  onSurface: Color(0xFF242424),
  secondary: Color(0xFF69D7C7),
  onSecondary: Color(0xFF616161),
  error: Color(0xFFD93F2F),
  surfaceVariant: Color(0xFFF5F5F5),
  secondaryContainer: Color(0xFFF0F0F0),
  onBackground: Color(0xFF242424),
  outline: Color(0xFFF5F5F5),
  scrim: Color(0xFF9AA6AC),
  background: Color(0xFFF5F5F5),
);

class ThemeColors extends ThemeExtension<ThemeColors> {
    const ThemeColors({
    required this.white,
    required this.yellow,
    required this.green,
    required this.blueDark,
    required this.blueLight,
    required this.red,
    required this.brown,
    required this.primaryText,
    required this.secondaryText,
    required this.loadIndicator,
    required this.whiteBackground,
    required this.borderRadiusFirstColor,
    required this.borderRadiusSecondColor,
    required this.otpColor,
    required this.secondBlack,
    required this.thirdBlack,
    required this.fourthBlack,
    required this.mainBackground,
    required this.anotherGrey,
    required this.ordinaryBlack,
    required this.anotherBlack,
  });
  final Color white;
  final Color green;
  final Color yellow;
  final Color blueDark;
  final Color blueLight;
  final Color red;
  final Color brown;
  final Color primaryText;
  final Color secondaryText;
  final Color loadIndicator;
  final Color whiteBackground;
  final Color borderRadiusFirstColor;
  final Color borderRadiusSecondColor;
  final Color otpColor;
  final Color secondBlack;
  final Color thirdBlack;
  final Color mainBackground;
  final Color fourthBlack;
  final Color anotherGrey;
  final Color ordinaryBlack;
  final Color anotherBlack;
  static const ThemeColors light = ThemeColors(
    white: Color(0xFFFFFFFF),
    yellow: Color(0xFFF4CA36),
    green: Color(0xFF119C2B),
    blueDark: Color(0xFF2A56C8),
    blueLight: Color(0xFF2A7CC8),
    red: Color(0xFFC82A63),
    brown: Color(0xFFC86C2A),
    primaryText: Color(0xFF242424),
    secondaryText: Color(0xFF616161),
    loadIndicator: Color(0xFF9AA6AC),
    whiteBackground: Color(0xFFFFFFFF),
    borderRadiusFirstColor: Color(0xFFF7F7F7),
    borderRadiusSecondColor: Color(0xFFFFCC00),
    otpColor: Color(0xFFF5F5F5),
    secondBlack: Color(0xff5F5F5F),
    thirdBlack: Color(0xff858585),
    mainBackground: Color(0xFFF5F5F5),
    fourthBlack: Color(0xFF2B2A28),
    anotherGrey: Color(0xffE5E5E5),
    ordinaryBlack: Color(0xFF5F5F5F),
    anotherBlack: Color(0xFF858585),
  );
  
  static const ThemeColors dark = ThemeColors(
    white: Color(0xFFFFFFFF),
    yellow: Color(0xFFF4CA36),
    green: Color(0xFF119C2B),
    blueDark: Color(0xFF2A56C8),
    blueLight: Color(0xFF2A7CC8),
    red: Color(0xFFC82A63),
    brown: Color(0xFFC86C2A),
    primaryText: Color(0xFF242424),
    secondaryText: Color(0xFF616161),
    loadIndicator: Color(0xFF9AA6AC),
    whiteBackground: Color(0xFFFFFFFF),
    borderRadiusFirstColor: Color(0xFFF7F7F7),
    borderRadiusSecondColor: Color(0xFFFFCC00),
    otpColor: Color(0xFFF5F5F5),
    secondBlack: Color(0xff5F5F5F),
    thirdBlack: Color(0xff858585),
    mainBackground: Color(0xffF5F5F5),
    fourthBlack: Color(0xFF2B2A28),
    anotherGrey: Color(0xE5E5E5),
    ordinaryBlack: Color(0xFF5F5F5F),
    anotherBlack: Color(0xFF858585),
  );
  
  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? yellow,
    Color? green,
    Color? primaryText,
    Color? secondaryText,
    Color? blueDark,
    Color? blueLight,
    Color? red,
    Color? brown,
    Color? loadIndicator,
    Color? whiteBackground,
    Color? borderRadiusFirstColor,
    Color? borderRadiusSecondColor,
    Color? otpColor,
    Color? secondBlack,
    Color? thirdBlack,
    Color? fourthBlack,
    Color? mainBackground,
    Color? anotherGrey,
    Color? ordinaryBlack,
    Color? anotherBlack,
  }) =>
      ThemeColors(
        white: white ?? this.white,
        blueDark: blueDark ?? this.blueDark,
        blueLight: blueLight ?? this.blueLight,
        brown: brown ?? this.brown,
        red: red ?? this.red,
        yellow: yellow ?? this.yellow,
        green: green ?? this.green,
        primaryText: primaryText ?? this.primaryText,
        secondaryText: secondaryText ?? this.secondaryText,
        loadIndicator: loadIndicator ?? this.loadIndicator,
        whiteBackground: whiteBackground ?? this.whiteBackground,
        borderRadiusFirstColor: borderRadiusFirstColor ?? this.borderRadiusFirstColor,
        borderRadiusSecondColor: borderRadiusSecondColor ?? this.borderRadiusSecondColor,
        otpColor: otpColor ?? this.otpColor,
        secondBlack: secondBlack ?? this.secondBlack,
        thirdBlack: thirdBlack ?? this.thirdBlack,
        fourthBlack: fourthBlack ?? this.fourthBlack,
        mainBackground: mainBackground ?? this.mainBackground,
       anotherGrey: anotherGrey ?? this.anotherGrey,
        ordinaryBlack: ordinaryBlack ?? this.ordinaryBlack,
        anotherBlack: anotherBlack ?? this.anotherBlack,
      );

  @override
  ThemeExtension<ThemeColors> lerp(
      ThemeExtension<ThemeColors>? other, double t) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      white: Color.lerp(white, other.white, t)!,
      blueDark: Color.lerp(blueDark, other.blueDark, t)!,
      blueLight: Color.lerp(blueLight, other.blueLight, t)!,
      brown: Color.lerp(brown, other.brown, t)!,
      red: Color.lerp(red, other.red, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      green: Color.lerp(green, other.green, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      loadIndicator: Color.lerp(loadIndicator, other.loadIndicator, t)!,
      whiteBackground: Color.lerp(whiteBackground, other.whiteBackground, t)!,
      borderRadiusFirstColor: Color.lerp(borderRadiusFirstColor, other.borderRadiusFirstColor, t)!,
      borderRadiusSecondColor: Color.lerp(borderRadiusSecondColor, other.borderRadiusSecondColor, t)!,
      otpColor: Color.lerp(otpColor, other.otpColor, t)!,
      secondBlack: Color.lerp(secondBlack, other.secondBlack, t)!,
      thirdBlack: Color.lerp(thirdBlack, other.thirdBlack, t)!,
      mainBackground: Color.lerp(mainBackground, other.mainBackground, t)!,
      fourthBlack: Color.lerp(fourthBlack, other.fourthBlack, t)!,
      anotherGrey: Color.lerp(anotherGrey, other.anotherGrey, t)!,
      ordinaryBlack: Color.lerp(ordinaryBlack, other.ordinaryBlack, t)!,
      anotherBlack: Color.lerp(anotherBlack, other.anotherBlack, t)!,
    );
  }
}