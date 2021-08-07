import 'package:flutter/material.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/colors/app_colors.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/fonts/app_font_size.dart';
import 'package:kkn_unhas_mamajang_106/ui/values/fonts/app_font_weight.dart';

/// Application Theme
/// There are [darkTheme] and [lightTheme]
class AppTheme{
  static const _fontFamily = 'Kanit';
  static const _spacing = 1.5;

  // Dark theme data
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.bodyDark,
    fontFamily: _fontFamily,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline1,
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      headline2: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline2,
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      headline3: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline3,
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      headline4: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline4,
        fontWeight: AppFontWeight.regular,
        height: _spacing,
      ),

      headline5: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.headline5,
        fontWeight: AppFontWeight.semiBold,
        height: _spacing,
      ),

      headline6: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline6,
        fontWeight: AppFontWeight.semiBold,
        height: _spacing,
      ),

      subtitle1: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.subtitle1,
        fontWeight: AppFontWeight.light,
        height: _spacing,
      ),

      subtitle2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.subtitle2,
        fontWeight: AppFontWeight.extraLight,
        height: _spacing,
      ),

      bodyText1: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.bodyText1,
        fontWeight: AppFontWeight.regular,
        height: _spacing,
      ),

      bodyText2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.bodyText2,
        fontWeight: AppFontWeight.regular,
        height: _spacing,
      ),

      caption: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.caption,
        fontWeight: AppFontWeight.regular,
        height: _spacing,
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
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      headline2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline2,
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      headline3: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline3,
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      headline4: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline4,
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      headline5: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline5,
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      headline6: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.headline6,
        fontWeight: AppFontWeight.bold,
        height: _spacing,
      ),

      subtitle1: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.subtitle1,
        fontWeight: AppFontWeight.light,
        height: _spacing,
      ),

      subtitle2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.subtitle2,
        fontWeight: AppFontWeight.extraLight,
        height: _spacing,
      ),

      bodyText1: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.bodyText1,
        fontWeight: AppFontWeight.regular,
        height: _spacing,
      ),

      bodyText2: TextStyle(
        color: AppColors.fontDark,
        fontSize: AppFontSize.bodyText2,
        fontWeight: AppFontWeight.regular,
        height: _spacing,
      ),

      caption: TextStyle(
        color: AppColors.fontLight,
        fontSize: AppFontSize.caption,
        fontWeight: AppFontWeight.regular,
        height: _spacing,
      ),
    ),
  );
}