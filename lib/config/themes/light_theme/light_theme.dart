import 'package:canton_design_system/canton_design_system.dart';
import 'package:canton_design_system/config/themes/light_theme/light_color_palette.dart';
import 'package:canton_design_system/config/themes/text_themes/mobile_text_theme.dart';
import 'package:flutter/material.dart';

ThemeData cantonLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: MobileTextTheme.theme(base),
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 1,
      color: CantonColors.borderPrimary,
    ),
    iconTheme: IconThemeData(
      color: CantonColors.iconPrimary,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: CantonColors.bgPrimary,
      contentTextStyle: TextStyle(
        color: CantonColors.textPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        letterSpacing: 0.0,
        height: 1.5,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // 23 for height 65, 18 for height 50
      contentPadding: const EdgeInsets.all(23),
      filled: true,
      isCollapsed: true,
      fillColor: CantonColors.gray[300],
      hoverColor: CantonColors.gray[400],
      enabledBorder: SquircleInputBorder(
        radius: 45,
        side: BorderSide(
          color: CantonColors.borderPrimary,
          width: 1.5,
        ),
      ),
      errorBorder: SquircleInputBorder(
        radius: 45,
        side: BorderSide(
          color: CantonColors.bgDangerInverse,
          width: 1.5,
        ),
      ),
      focusedBorder: SquircleInputBorder(
        radius: 45,
        side: BorderSide(
          width: 1.5,
        ),
      ),
      focusedErrorBorder: SquircleInputBorder(
        radius: 45,
        side: BorderSide(
          color: CantonColors.bgDangerInverse,
          width: 1.5,
        ),
      ),
      helperStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.textPrimary,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: CantonColors.textSecondary,
        height: 1.5,
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.textPrimary,
        height: 1.5,
      ),
      prefixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: cantonGrey,
        height: 1.5,
      ),
      suffixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.textPrimary,
        height: 1.5,
      ),
    ),
    cardTheme: CardTheme(
      shape: SquircleBorder(
        radius: 40,
        side: BorderSide(width: 1.5, color: CantonColors.borderPrimary),
      ),
      elevation: 0.0,
      color: CantonColors.bgPrimary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: CantonColors.bgPrimary,
      modalBackgroundColor: CantonColors.bgPrimary,
      modalElevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
      ),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: CantonColors.blue),
    primaryColor: CantonColors.blue,
    errorColor: CantonColors.bgDangerInverse,
    appBarTheme: const AppBarTheme(color: CantonColors.clear, elevation: 0.0),
    canvasColor: CantonColors.bgCanvas,
    backgroundColor: CantonColors.bgPrimary,
    scaffoldBackgroundColor: CantonColors.bgPrimary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: CantonColors.clear,
      elevation: 0.0,
      unselectedItemColor: CantonColors.iconTertiary,
    ),
  );
}
