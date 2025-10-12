import 'package:flutter/material.dart';

abstract final class AppColors {
  static const ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFDD2A02),
    onPrimary: Colors.white,
    primaryContainer: Color(0xFFFF5730),
    onPrimaryContainer: Colors.white,
    secondary: Color(0xFF00E5FF),
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFF73FFFF),
    onSecondaryContainer: Colors.black,
    surface: Colors.white,
    onSurface: Color(0xFF212121),
    background: Color(0xFFF5F5F5),
    onBackground: Color(0xFF212121),
    error: Color(0xFFE53935),
    onError: Colors.white,
  );

  // 🌚 Dark Scheme
  static const ColorScheme darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFF7043),
    onPrimary: Colors.black,
    primaryContainer: Color(0xFFC42400),
    onPrimaryContainer: Colors.white,
    secondary: Color(0xFF00B2CC),
    onSecondary: Colors.black,
    secondaryContainer: Color(0xFF005662),
    onSecondaryContainer: Colors.white,
    surface: Color(0xFF1E1E1E),
    onSurface: Colors.white,
    background: Color(0xFF121212),
    onBackground: Colors.white,
    error: Color(0xFFEF9A9A),
    onError: Colors.black,
  );

  // ✨ Utility colors
  static const Color borderColor = Color(0xFFE0E0E0);
  static const Color dividerColor = Color(0xFFEEEEEE);
  static const Color shadowColor = Color(0x33000000);
  static const Color overlayColor = Color(0x99000000);

  // Status
  static const Color success = Color(0xFF43A047);
  static const Color warning = Color(0xFFFFA000);
  static const Color info = Color(0xFF1E88E5);
}
