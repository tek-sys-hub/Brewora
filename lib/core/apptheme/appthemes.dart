import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static const Color espresso = Color(0xFF42291C);
  static const Color coffee = Color(0xFF8B5E3C);
  static const Color caramel = Color(0xFFC58B54);
  static const Color creamBackground = Color(0xFFF8F1E7);
  static const Color surfaceWhite = Color(0xFFFFFFFF);
  static const Color softSurface = Color(0xFFF1E7DA);
  static const Color primaryTextLight = Color(0xFF2B211B);
  static const Color secondaryTextLight = Color(0xFF78685B);
  static const Color borderLight = Color(0xFFE7D9C9);

  static const Color darkPrimary = Color(0xFFD7AD83);
  static const Color darkSecondary = Color(0xFFB9855B);
  static const Color darkAccent = Color(0xFFE4B982);
  static const Color darkBackground = Color(0xFF171310);
  static const Color darkSurface = Color(0xFF211B17);
  static const Color darkElevatedSurface = Color(0xFF2D241E);
  static const Color primaryTextDark = Color(0xFFF6EEE5);
  static const Color secondaryTextDark = Color(0xFFC3B3A3);
  static const Color borderDark = Color(0xFF493A2F);

  static const Color success = Color(0xFF287D52);
  static const Color warning = Color(0xFFB7791F);
  static const Color danger = Color(0xFFB42318);
  static const Color information = Color(0xFF356A8A);

  static ThemeData get lightTheme {
    final baseTextTheme = GoogleFonts.plusJakartaSansTextTheme();
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: creamBackground,
      colorScheme: ColorScheme.fromSeed(
        seedColor: espresso,
        primary: espresso,
        secondary: coffee,
        tertiary: caramel,
        surface: surfaceWhite,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: creamBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: primaryTextLight, size: 20),
        titleTextStyle: TextStyle(
          color: primaryTextLight,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: espresso,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          textStyle: GoogleFonts.plusJakartaSans(
            fontSize: 14.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: surfaceWhite,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: borderLight, width: 1),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceWhite,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderLight),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderLight),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: espresso, width: 1.5),
        ),
        hintStyle: GoogleFonts.plusJakartaSans(
          color: secondaryTextLight,
          fontSize: 13,
        ),
      ),
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    final baseTextTheme = GoogleFonts.plusJakartaSansTextTheme(
      ThemeData.dark().textTheme,
    );
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        secondary: darkSecondary,
        tertiary: darkAccent,
        surface: darkSurface,
        brightness: Brightness.dark,
      ),
      textTheme: baseTextTheme.copyWith(
        headlineLarge: GoogleFonts.plusJakartaSans(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: primaryTextDark,
          letterSpacing: -0.5,
        ),
        headlineMedium: GoogleFonts.plusJakartaSans(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: primaryTextDark,
          letterSpacing: -0.3,
        ),
        titleLarge: GoogleFonts.plusJakartaSans(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: primaryTextDark,
        ),
        titleMedium: GoogleFonts.plusJakartaSans(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: primaryTextDark,
        ),
        bodyLarge: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: primaryTextDark,
        ),
        bodyMedium: GoogleFonts.plusJakartaSans(
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: secondaryTextDark,
        ),
        labelLarge: GoogleFonts.plusJakartaSans(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: darkBackground,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: primaryTextDark, size: 20),
        titleTextStyle: TextStyle(
          color: primaryTextDark,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: darkPrimary,
          foregroundColor: darkBackground,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          textStyle: GoogleFonts.plusJakartaSans(
            fontSize: 14.5,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: darkSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: borderDark, width: 1),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkSurface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderDark),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: borderDark),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: darkPrimary, width: 1.5),
        ),
        hintStyle: GoogleFonts.plusJakartaSans(
          color: secondaryTextDark,
          fontSize: 13,
        ),
      ),
    );
  }
}
