import 'package:flutter/material.dart';
import 'package:kasir_super/core/core.dart';

class LightTheme {
  LightTheme(this.primaryColor);

  final Color primaryColor;

  final Color errorColor = AppColors.red;
  final Color scaffoldcolor = AppColors.putih;
  final Color textSolidColor = AppColors.black;
  final Color textDisableColor = AppColors.black[400]!;
  final Color borderColor = AppColors.white;
  final Color disabledColor = AppColors.black[200]!;
  final Color inputColor = AppColors.white[400]!;

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
          color: textDisableColor,
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

  ElevatedButtonThemeData get elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
        backgroundColor: primaryColor,
        foregroundColor: scaffoldcolor,
        textStyle: textTheme.titleMedium,
      ),
    );
  }

  OutlinedButtonThemeData get outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
        side: BorderSide(color: primaryColor),
        foregroundColor: primaryColor,
        textStyle: textTheme.titleMedium,
      ),
    );
  }

  InputDecorationTheme get inputDecorationTheme {
    return InputDecorationTheme(
      fillColor: inputColor,
      filled: true,
      hintStyle: textTheme.labelMedium,
      prefixIconColor: textDisableColor,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Dimens.defaultSize,
        vertical: Dimens.dp12,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.dp8),
        borderSide: BorderSide(color: inputColor),
      ),
      disabledBorder:OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.dp8),
        borderSide: BorderSide(color: inputColor),
      ), ,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.dp8),
        borderSide: BorderSide(color: primaryColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.dp8),
        borderSide: BorderSide(color: primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.dp8),
        borderSide: BorderSide(color: errorColor),
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
      elevatedButtonTheme: elevatedButtonTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      inputDecorationTheme: inputDecorationTheme,
    );
  }
}
