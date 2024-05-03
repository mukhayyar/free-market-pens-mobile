import 'package:flutter/material.dart';

Color primary = const Color(0xff45b9c6);
Color secondary = const Color(0xffccf2f4);
Color tertiary = const Color(0xffaaaaaa);
Color error = const Color(0xffdc2121);
Color onPrimary = const Color(0xffffffff);
Color onSecondary = const Color(0xff000000);
Color tertiary2 = const Color(0xffF4F9F9);
Color brownText = const Color(0xff404040);

TextStyle appBarTitleStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  color: onSecondary,
);

TextStyle textLabelStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  color: brownText,
);

TextStyle textInputStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: onSecondary,
);

TextStyle filledButtonLabelStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: onPrimary,
);

TextStyle outlinedButtonLabelStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: primary,
);

TextStyle titleStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: onSecondary,
);

TextStyle mainPriceStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: primary,
);

TextStyle secondaryPriceStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: primary,
);

TextStyle mainTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: onSecondary,
);

TextStyle secondaryTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w300,
  color: onSecondary,
);

TextStyle tertiaryTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w300,
  color: tertiary,
);

final appTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light().copyWith(
    primary: primary,
    secondary: secondary,
    tertiary: tertiary,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onSurface: brownText,
  ),
);
