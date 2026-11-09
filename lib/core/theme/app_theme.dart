import 'package:flutter/material.dart';

class AppTheme {
  // Brand Colors
  static const Color primaryGreen = Color(0xFF00897B); // Deep Teal/Green
  static const Color forest = Color(0xFF1E3A2F);       // Added to fix setup screen error
  static const Color backgroundGrey = Color(0xFFF5F7F9);

  // Surface Colors
  static const Color cardWhite = Colors.white;

  // Text Colors
  static const Color textDark = Color(0xFF1E293B);
  static const Color textLight = Color(0xFF64748B);

  // Alert Colors
  static const Color warningRed = Color(0xFFEF4444);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryGreen,
      scaffoldBackgroundColor: backgroundGrey,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryGreen,
        primary: primaryGreen,
        background: backgroundGrey,
      ),

      // AppBar Styling
      appBarTheme: const AppBarTheme(
        backgroundColor: cardWhite,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(color: textDark),
        titleTextStyle: TextStyle(
          color: textDark,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      // Card Styling
      cardTheme: CardThemeData(
        color: cardWhite,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.grey.shade200),
        ),
      ),

      // Button Styling
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryGreen,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      // Text Field Styling (Matches the rounded search/input bars in your design)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: cardWhite,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryGreen, width: 2),
        ),
        hintStyle: const TextStyle(color: textLight),
        labelStyle: const TextStyle(color: textLight),
      ),

      // Floating Action Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryGreen,
        foregroundColor: Colors.white,
      ),
    );
  }
}