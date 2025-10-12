import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract final class AppTheme {
  // Typography base
  static const String fontFamily = 'Inter';

  // Radius tokens
  static const double radiusS = 4.0;
  static const double radiusM = 8.0;
  static const double radiusL = 16.0;

  // Shadows
  static final List<BoxShadow> lightShadow = [
    const BoxShadow(
      color: AppColors.shadowColor,
      blurRadius: 8,
      offset: const Offset(0, 2),
    )
  ];

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: fontFamily,
    colorScheme: AppColors.lightScheme,
    scaffoldBackgroundColor: AppColors.lightScheme.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightScheme.primary,
      foregroundColor: AppColors.lightScheme.onPrimary,
      elevation: 0,
    ),
    dividerColor: AppColors.dividerColor,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusM),
        borderSide: BorderSide(color: AppColors.borderColor),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: fontFamily,
    colorScheme: AppColors.darkScheme,
    scaffoldBackgroundColor: AppColors.darkScheme.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkScheme.primary,
      foregroundColor: AppColors.darkScheme.onPrimary,
      elevation: 0,
    ),
    dividerColor: Colors.white24,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusM),
        borderSide: const BorderSide(color: Colors.white24),
      ),
    ),
  );
}
