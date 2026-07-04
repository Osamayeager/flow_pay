import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Primary Palette
  static const Color darkBackground = Color(0xFF0F111A);
  static const Color cardSurface = Color(0xFF1E2132);
  static const Color cardSurfaceElevated = Color(0xFF272B40);

  // Accents & Gradients
  static const Color primaryPurple = Color(0xff0066ff);
  static const Color accentCyan = Color(0xFF00C48C);
  static const Color accentOrange = Color(0xFFFF974A);
  static const Color accentPink = Color(0xFFFF5C8D);

  // Text Colors
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFF8F95B2);
  static const Color textMuted = Color(0xFF5C627E);

  // Gradients
  static const LinearGradient cardGradient = LinearGradient(
    colors: [Color(0xFF6C5DD3), Color(0xFF4C3CB5)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [Color(0xFF00C48C), Color(0xFF00916E)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      primaryColor: const Color.fromARGB(255, 44, 70, 240),
      colorScheme: const ColorScheme.dark(
        primary: primaryPurple,
        secondary: accentCyan,
        surface: cardSurface,
      ),
      textTheme: GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme)
          .copyWith(
            displayLarge: GoogleFonts.outfit(
              color: textWhite,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: GoogleFonts.outfit(
              color: textWhite,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            titleLarge: GoogleFonts.outfit(
              color: textWhite,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            bodyLarge: GoogleFonts.outfit(
              color: textWhite,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            bodyMedium: GoogleFonts.outfit(
              color: textSecondary,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.outfit(
          color: textWhite,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
