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
      color: cantonGrey[300],
    ),
    iconTheme: const IconThemeData(
      color: cantonGrey,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: cantonGrey[300],
      actionTextColor: cantonPrimary,
      contentTextStyle: TextStyle(
        color: cantonGrey[900],
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
      fillColor: cantonGrey[100],
      hoverColor: cantonGrey[300],
      enabledBorder: SquircleInputBorder(
        radius: 45,
        side: BorderSide(
          color: cantonGrey[400],
          width: 1.5,
        ),
      ),
      errorBorder: const SquircleInputBorder(
        radius: 45,
        side: BorderSide(
          color: cantonDanger,
          width: 1.5,
        ),
      ),
      focusedBorder: const SquircleInputBorder(
        radius: 45,
        side: BorderSide(
          color: cantonPrimary,
          width: 1.5,
        ),
      ),
      focusedErrorBorder: const SquircleInputBorder(
        radius: 45,
        side: BorderSide(
          color: cantonDanger,
          width: 1.5,
        ),
      ),
      helperStyle: const TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        color: cantonGrey,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: cantonGrey[600],
        height: 1.5,
      ),
      labelStyle: const TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: cantonGrey,
        height: 1.5,
      ),
      prefixStyle: const TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: cantonGrey,
        height: 1.5,
      ),
      suffixStyle: const TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: cantonGrey,
        height: 1.5,
      ),
    ),
    cardTheme: CardTheme(
      shape: SquircleBorder(
        radius: 40,
        side: BorderSide(width: 1.5, color: cantonGrey[200]),
      ),
      elevation: 0.0,
      color: cantonGrey[100],
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: cantonGrey[100],
      modalBackgroundColor: cantonGrey[100],
      modalElevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
      ),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: cantonPrimary),
    primaryColor: cantonGrey[600],
    errorColor: cantonDanger,
    appBarTheme: const AppBarTheme(color: cantonInvisible, elevation: 0.0),
    indicatorColor: cantonPrimary,
    focusColor: cantonPrimary,
    hintColor: cantonGrey[600],
    canvasColor: cantonGrey[100],
    backgroundColor: cantonGrey[100],
    scaffoldBackgroundColor: cantonGrey[100],
    toggleableActiveColor: cantonPrimary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: cantonInvisible,
      elevation: 0.0,
      selectedItemColor: cantonGrey[900],
      unselectedItemColor: cantonGrey[500],
    ),
  );
}
