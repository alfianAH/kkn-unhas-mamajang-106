import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/fonts/app_fonts.dart';

/// Application Theme
/// There are [darkTheme] and [lightTheme]
class AppTheme{
  static const _fontFamily = 'Kanit';

  // Dark theme data
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.bodyDark,
    fontFamily: _fontFamily,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColors.fontLight,
        fontSize: 40,
        fontWeight: AppFonts.bold
      ),

      headline2: TextStyle(
        color: AppColors.fontLight,
        fontSize: 35,
        fontWeight: AppFonts.bold
      ),

      headline3: TextStyle(
        color: AppColors.fontLight,
        fontSize: 30,
        fontWeight: AppFonts.bold
      ),

      headline4: TextStyle(
        color: AppColors.fontLight,
        fontSize: 30,
        fontWeight: AppFonts.regular
      ),

      headline5: TextStyle(
        color: AppColors.fontLight,
        fontSize: 20,
        fontWeight: AppFonts.bold
      ),

      headline6: TextStyle(
        color: AppColors.fontDark,
        fontSize: 20,
        fontWeight: AppFonts.bold
      ),

      subtitle1: TextStyle(
        color: AppColors.fontLight,
        fontSize: 25,
        fontWeight: AppFonts.light
      ),

      subtitle2: TextStyle(
        color: AppColors.fontDark,
        fontSize: 15,
        fontWeight: AppFonts.extraLight
      ),

      bodyText1: TextStyle(
        color: AppColors.fontLight,
        fontSize: 25,
        fontWeight: AppFonts.regular,
      ),

      bodyText2: TextStyle(
        color: AppColors.fontDark,
        fontSize: 15,
        fontWeight: AppFonts.regular,
      ),

      caption: TextStyle(
        color: AppColors.fontLight,
        fontSize: 20,
        fontWeight: AppFonts.regular,
      ),
    ),
  );

  // Light theme data
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.bodyLight,
    fontFamily: _fontFamily,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColors.fontDark,
        fontSize: 40,
        fontWeight: AppFonts.bold
      ),

      headline2: TextStyle(
        color: AppColors.fontDark,
        fontSize: 35,
        fontWeight: AppFonts.bold
      ),

      headline3: TextStyle(
        color: AppColors.fontDark,
        fontSize: 30,
        fontWeight: AppFonts.bold
      ),

      headline4: TextStyle(
        color: AppColors.fontDark,
        fontSize: 30,
        fontWeight: AppFonts.bold
      ),

      headline5: TextStyle(
        color: AppColors.fontDark,
        fontSize: 20,
        fontWeight: AppFonts.bold
      ),

      headline6: TextStyle(
        color: AppColors.fontDark,
        fontSize: 20,
        fontWeight: AppFonts.bold
      ),

      subtitle1: TextStyle(
        color: AppColors.fontDark,
        fontSize: 25,
        fontWeight: AppFonts.light
      ),

      subtitle2: TextStyle(
        color: AppColors.fontDark,
        fontSize: 15,
        fontWeight: AppFonts.extraLight
      ),

      bodyText1: TextStyle(
        color: AppColors.fontDark,
        fontSize: 25,
        fontWeight: AppFonts.regular,
      ),

      bodyText2: TextStyle(
        color: AppColors.fontDark,
        fontSize: 15,
        fontWeight: AppFonts.regular,
      ),

      caption: TextStyle(
        color: AppColors.fontLight,
        fontSize: 20,
        fontWeight: AppFonts.regular,
      ),
    ),
  );
}