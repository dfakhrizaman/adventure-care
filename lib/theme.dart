import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

ThemeData getTheme(BuildContext context) {
  return ThemeData(
    fontFamily: 'Nunito',
    scaffoldBackgroundColor: const Color(0xFFFCF5F3),
    primaryColor: const Color(0xFFF7AA02),
    buttonTheme: ButtonTheme.of(context).copyWith(
      buttonColor: const Color(0xFFF7AA02),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFFF7AA02),
        minimumSize: Size.fromHeight(5.h),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange).copyWith(
      secondary: const Color(0xFFF7AA02),
    ),
  );
}
