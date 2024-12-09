import 'package:flutter/material.dart';
import 'package:kasir_super/core/core.dart';

class LightTheme {
  LightTheme(this.primaryColor);

  final Color primaryColor;

  final Color errorColor = AppColors.red;
  final Color scaffoldcolor = AppColors.white;
  final Color textSolidColor = AppColors.black;
  final Color borderColor = AppColors.white;
  final Color disabledColor = AppColors.black;

  TextTheme get textTheme => TextTheme(
        headlineLarge: TextStyle(
          fontSize: Dimens.dp32,
          fontWeight: FontWeight.bold,
          color: textSolidColor,
        ),
        headlineMedium: TextStyle(
          fontSize: Dimens.dp24,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        headlineSmall: TextStyle(
          fontSize: Dimens.dp20,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        titleLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        titleMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        bodyLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w500,
          color: textSolidColor,
        ),
        bodyMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.normal,
          color: textSolidColor,
        ),
        labelMedium: TextStyle(
          fontSize: Dimens.dp12,
          fontWeight: FontWeight.normal,
          color: textSolidColor,
        ),
      );

  AppBarTheme get appBarTheme => AppBarTheme(
        centerTitle: false,
        surfaceTintColor: scaffoldcolor,
      );

  CardTheme get cardTheme => CardTheme(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          side: BorderSide(color: borderColor),
        ),
      );

  BottomNavigationBarThemeData get bottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryColor,
      unselectedItemColor: disabledColor,
      selectedLabelStyle: textTheme.labelMedium?.copyWith(
        fontSize: Dimens.dp10,
        color: primaryColor,
      ),
      unselectedLabelStyle: textTheme.labelMedium?.copyWith(
        fontSize: Dimens.dp10,
        color: disabledColor,
      ),
    );
  }

  ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: primaryColor,
        error: errorColor,
      ),
      scaffoldBackgroundColor: scaffoldcolor,
      useMaterial3: true,
      fontFamily: 'Poppins',
      textTheme: textTheme,
      appBarTheme: appBarTheme,
      cardTheme: cardTheme,
      bottomNavigationBarTheme: bottomNavigationBarTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp8),
          ),
          backgroundColor: primaryColor,
          foregroundColor: scaffoldcolor,
          textStyle: textTheme.titleMedium,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp8),
          ),
          side: BorderSide(color: primaryColor),
          foregroundColor: primaryColor,
          textStyle: textTheme.titleMedium,
        ),
      ),
    );
  }
}
