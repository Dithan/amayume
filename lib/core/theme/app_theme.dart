import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmayumeTheme {
  static const Color primary = Color(0xFF9A85B4);
  static const Color background = Color(0xFF191C25);
  static const Color clearer = Color(0XFFE6EFE9);

  static ThemeData get theme {
    return ThemeData(
      // Data theme
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.transparent,
      // Texts
      textTheme: TextTheme(
        displayLarge: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titleLarge: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        // Bottom Nav
        titleSmall: GoogleFonts.inter(
          fontSize: 8,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: clearer,
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: clearer,
        ),
      ),
      // App Bar
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // Color Schema
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        brightness: Brightness.dark,
      ),
    );
  }
}
