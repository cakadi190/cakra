import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  textTheme: GoogleFonts.signikaTextTheme(
    ThemeData.light().textTheme.copyWith(
      displayLarge: GoogleFonts.signika(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.brown[800]),
      displayMedium: GoogleFonts.signika(fontSize: 28, fontWeight: FontWeight.w600, color: Colors.brown[700]),
      bodyLarge: GoogleFonts.signika(color: Colors.brown[900]),
      bodyMedium: GoogleFonts.signika(color: Colors.brown[800]),
    ),
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.brown.shade600,
    onPrimary: Colors.white,
    secondary: Colors.brown.shade700,
    onSecondary: Colors.white,
    tertiary: Colors.brown.shade400,
    surface: Colors.brown.shade50,
    surfaceTint: Colors.brown.shade100,
    error: Colors.red.shade600,
    onError: Colors.white,
  ),
  cardTheme: CardTheme(
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    color: Colors.brown.shade100,
    surfaceTintColor: Colors.brown.shade200,
    shadowColor: Colors.brown.shade300.withOpacity(0.5),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.brown.shade600,
    foregroundColor: Colors.white,
    elevation: 4,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.brown.shade600,
      foregroundColor: Colors.white,
      textStyle: GoogleFonts.signika(fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.brown.shade50,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.brown.shade400),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.brown.shade300),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.brown.shade700, width: 2),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  splashColor: Colors.brown.shade300.withOpacity(0.3), // Added splash color for InkWell
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  textTheme: GoogleFonts.signikaTextTheme(
    ThemeData.dark().textTheme.copyWith(
      displayLarge: GoogleFonts.signika(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.grey[200]),
      displayMedium: GoogleFonts.signika(fontSize: 28, fontWeight: FontWeight.w600, color: Colors.grey[300]),
      bodyLarge: GoogleFonts.signika(color: Colors.grey[100]),
      bodyMedium: GoogleFonts.signika(color: Colors.grey[200]),
    ),
  ),
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade700,
    onPrimary: Colors.white,
    secondary: Colors.grey.shade300,
    onSecondary: Colors.white,
    tertiary: Colors.grey.shade700,
    surface: Colors.grey.shade900,
    surfaceTint: Colors.grey.shade800,
    error: Colors.red.shade800,
    onError: Colors.white,
  ),
  cardTheme: CardTheme(
    elevation: 3,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    color: Colors.grey.shade800,
    surfaceTintColor: Colors.grey.shade700,
    shadowColor: Colors.black.withOpacity(0.5),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.grey.shade900,
    foregroundColor: Colors.white,
    elevation: 4,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.grey.shade700,
      foregroundColor: Colors.white,
      textStyle: GoogleFonts.signika(fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade900,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade600),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade500),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  splashColor: Colors.grey.shade700.withOpacity(0.3), // Added splash color for InkWell
);
