import 'package:clot/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    // set light theme
    scaffoldBackgroundColor: AppColors.bgLight1,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColorDarck.bgDark1,
        fontSize: 22,
        fontWeight: FontWeight.bold 
      ),
      bodyMedium: TextStyle(
        color: AppColors.appBlack,
        fontSize: 18,
        fontWeight: FontWeight.normal
      ),
      bodySmall: TextStyle(
        color: AppColors.appBlack,
        fontSize: 15,
        fontWeight: FontWeight.w200
      )
    )
  );
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColorDarck.bgDark2,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColorDarck.white100,
        fontSize: 22,
        fontWeight: FontWeight.bold
      ),
      bodyMedium: TextStyle(
        color: AppColorDarck.white100,
        fontSize: 18,
        fontWeight: FontWeight.normal
      ),
      bodySmall: TextStyle(
        color: AppColorDarck.white100,
        fontSize: 15,
        fontWeight: FontWeight.w200
      )
    )
  );
}