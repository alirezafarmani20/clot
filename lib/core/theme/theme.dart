import 'package:clot/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    // set light theme
    scaffoldBackgroundColor: AppColors.bgLight1,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.appBlack,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: AppColors.appBlack,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: AppColors.appBlack,
        fontSize: 15,
        fontWeight: FontWeight.w200,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      // set style for textbutton in light mode
      style: TextButton.styleFrom(
        backgroundColor: AppColors.bgLight2,
        textStyle: TextStyle(
          color: AppColors.appBlack,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColorDarck.bgDark2,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColorDarck.white100,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: AppColorDarck.white100,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        color: AppColorDarck.white100,
        fontSize: 15,
        fontWeight: FontWeight.w200,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      // set style for textbutton in dark mode
      style: TextButton.styleFrom(
        backgroundColor: AppColorDarck.bgDark2,
        textStyle: TextStyle(
          color: AppColorDarck.white100,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}

