import 'package:flutter/material.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'Montserrat',
    accentColor: Colors.black38,
    scaffoldBackgroundColor: AppColors.white,
    backgroundColor: AppColors.backgroundGrey,
    dividerColor: AppColors.dividerColor,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: AppColors.black),
      textTheme: TextTheme(headline6: TextStyles.appBar),
      elevation: 0,
      color: AppColors.white,
    ),
    shadowColor: AppColors.white,
    textTheme: TextTheme(
      headline5: TextStyles.subtitle.copyWith(color: AppColors.black),
      headline6: TextStyles.subtitle.copyWith(color: AppColors.grey),
      bodyText1: TextStyles.body.copyWith(color: AppColors.grey),
      bodyText2: TextStyles.body.copyWith(color: AppColors.black),
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: 'Montserrat',
    accentColor: Colors.white,
    scaffoldBackgroundColor: AppColors.black,
    backgroundColor: Color(0xFF0A0A0A),
    dividerColor: AppColors.white,
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: AppColors.white),
      textTheme: TextTheme(
        headline6: TextStyles.appBar.copyWith(color: AppColors.white),
      ),
      elevation: 0,
      color: AppColors.black,
    ),
    shadowColor: AppColors.black,
    textTheme: TextTheme(
      headline5: TextStyles.subtitle.copyWith(color: AppColors.white),
      headline6: TextStyles.subtitle.copyWith(color: AppColors.white),
      bodyText1: TextStyles.body.copyWith(color: AppColors.white),
      bodyText2: TextStyles.body.copyWith(color: AppColors.white),
    ),
  );
}
