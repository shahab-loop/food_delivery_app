import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static const Color greyColor = Color(0xff858C83);
  static const Color white10 = Color(0xffFBEDEA);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color headerColor = Color(0xff5E5959);
  static const Color ratingColor1 = Color(0xff746969);
  static const Color primaryColor = Color(0xffFF785B);
  static const Color backgroundColor = Color(0xffFBEDEA);
  static const Color fbColor = Color(0xff0F71A8);
  static const Color white12 = Color(0xffF1F1F2);
  static const Color borderColor = Color(0xffC4C4C4);

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // primarySwatch: Colors.blue,
    scaffoldBackgroundColor: ThemeManager.primaryColor,
    useMaterial3: false,
    // appBarTheme: const AppBarTheme(
    //   color: Colors.black,
    // ),
    // colorScheme: ColorScheme(
    //   surface: ThemeManager.backgroundColor,
    //   // onSurface: Colors.white,
    //   // brightness: Brightness.dark,
    //   // primary: ThemeManager.secondaryColor,
    //   // onPrimary: ThemeManager.primaryColor,
    //   // secondary: ThemeManager.secondaryColor,
    //   // onSecondary: ThemeManager.secondaryColor,
    //   // error: ThemeManager.errorColor,
    //   // onError: ThemeManager.errorColor,
    // ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'avenir',
        color: primaryColor,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'avenir',
        color: white,
        fontSize: 32,
        fontWeight: FontWeight.w900,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'avenir',
        color: black,
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w400,
        fontSize: 24,
        color: headerColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w100,
        fontSize: 14,
        color: primaryColor,
      ),
      bodySmall: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w100,
        fontSize: 20,
        color: black,
      ),
      titleLarge: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w100,
        fontSize: 20,
        color: white,
      ),
      titleMedium: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w100,
        fontSize: 14,
        color: headerColor,
      ),
      labelLarge: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w400,
        fontSize: 35,
        color: black,
      ),
      labelMedium: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: black,
      ),
      labelSmall: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: black,
      ),
      displayLarge: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w900,
        fontSize: 16,
        color: black,
      ),
titleSmall: TextStyle(
  fontFamily: 'avenir',
  fontWeight: FontWeight.w400,
  fontSize: 10,
  color: primaryColor,
),
      displaySmall: TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w300,
        fontSize: 18,
        color: black,
      ),
    displayMedium:  TextStyle(
        fontFamily: 'avenir',
        fontWeight: FontWeight.w900,
        fontSize: 16,
        color: white,
    ),
  ));
}
