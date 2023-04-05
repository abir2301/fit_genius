import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xff6392BE);
const secondColor = Color(0xff7286D3);
const secondaryColor = Color(0xff51eec2);
const grey = Color(0xff6F6767);
const blackColor = Color(0xff000000);
const white = Color(0xffF5F5F5);
const green = Color(0xff13AEC0);
const bgcolor = Color(0xffF3F8FE);
const hoverColor = Color(0xff717171);
const pink = Color(0xffb64598);
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
    fontWeight: FontWeight.bold,
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

registrationMessageStyle({double? size}) {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: blackColor,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  ));
}
