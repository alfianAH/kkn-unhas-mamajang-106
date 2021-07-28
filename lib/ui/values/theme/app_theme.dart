import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/fonts/app_font_size.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/fonts/app_font_weight.dart';

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
        fontSize: AppFontSize.headline1,
        fontWeight: AppFontWeight.bold
      ),

      headline2: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline2,
        fontWeight: AppFontWeight.bold
      ),

      headline3: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline3,
        fontWeight: AppFontWeight.bold
      ),

      headline4: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline4,
        fontWeight: AppFontWeight.regular
      ),

      headline5: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline5,
        fontWeight: AppFontWeight.bold
      ),

      headline6: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline6,
        fontWeight: AppFontWeight.bold
      ),

      subtitle1: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.subtitle1,
        fontWeight: AppFontWeight.light
      ),

      subtitle2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.subtitle2,
        fontWeight: AppFontWeight.extraLight
      ),

      bodyText1: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.bodyText1,
        fontWeight: AppFontWeight.regular,
      ),

      bodyText2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.bodyText2,
        fontWeight: AppFontWeight.regular,
      ),

      caption: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.caption,
        fontWeight: AppFontWeight.regular,
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
        fontSize: AppFontSize.headline1,
        fontWeight: AppFontWeight.bold
      ),

      headline2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline2,
        fontWeight: AppFontWeight.bold
      ),

      headline3: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline3,
        fontWeight: AppFontWeight.bold
      ),

      headline4: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline4,
        fontWeight: AppFontWeight.bold
      ),

      headline5: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline5,
        fontWeight: AppFontWeight.bold
      ),

      headline6: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline6,
        fontWeight: AppFontWeight.bold
      ),

      subtitle1: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.subtitle1,
        fontWeight: AppFontWeight.light
      ),

      subtitle2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.subtitle2,
        fontWeight: AppFontWeight.extraLight
      ),

      bodyText1: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.bodyText1,
        fontWeight: AppFontWeight.regular,
      ),

      bodyText2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.bodyText2,
        fontWeight: AppFontWeight.regular,
      ),

      caption: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.caption,
        fontWeight: AppFontWeight.regular,
      ),
    ),
  );
}