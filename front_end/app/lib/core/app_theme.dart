import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xff6392BE);
const secondaryColor = Color(0xff51eec2);
const blackColor = Color(0xff000000);
const white = Color(0xffF5F5F5);

final appTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: true,
    ),
    brightness: Brightness.light,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: primaryColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: secondaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        iconColor: secondaryColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.circular(8),
        )));
screenHeaderStyle({required double size}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.w500,
    fontSize: size,
  ));
}

kButtonTextStyle(bool isSkipped) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
    color: isSkipped ? primaryColor : Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  ));
}
