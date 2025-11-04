import 'package:flutter/material.dart';
import 'package:pokebase/constants/enumerations.dart';

class AppThemes {
  static const _fontFamily = 'JetBrainsMono';

  // ==== LIGHT THEME ====
  static ThemeData lightTheme = ThemeData(
    fontFamily: _fontFamily,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: PokemonColorType.fire.primary),
    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.redAccent,
      foregroundColor: Colors.white,
      elevation: 4,
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black87),
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),

    // ==== CARD THEME ====
    cardTheme: CardThemeData(
      elevation: 6,
      color: Colors.white,
      shadowColor: Colors.redAccent.withValues(alpha: 0.25),
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: Colors.redAccent.withValues(alpha: 0.15)),
      ),
    ),

    // ==== BUTTONS ====
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: PokemonColorType.fire.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: PokemonColorType.fire.primary,
        side: BorderSide(color: PokemonColorType.fire.primary, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: PokemonColorType.fire.primary,
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),
    ),

    useMaterial3: true,
  );

  // ==== DARK THEME ====
  static ThemeData darkTheme = ThemeData(
    fontFamily: _fontFamily,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: PokemonColorType.fire.primary,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: const Color(0xFF0E0E0E),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 4,
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.white70),
      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),

    // ==== CARD THEME (Dark Mode) ====
    cardTheme: CardThemeData(
      elevation: 4,
      color: const Color(0xFF1A1A1A),
      shadowColor: Colors.redAccent.withValues(alpha: 0.3),
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: Colors.redAccent.withValues(alpha: 0.3)),
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: PokemonColorType.fire.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: PokemonColorType.fire.primary,
        side: BorderSide(color: PokemonColorType.fire.primary, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: PokemonColorType.fire.primary,
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),
    ),

    useMaterial3: true,
  );

  // ==== SPECIAL BUTTON STYLES FOR POKEMON ACTIONS ====
  static ButtonStyle catchButton(Color typeColor) => FilledButton.styleFrom(
    backgroundColor: typeColor,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );

  static ButtonStyle battleButton(Color typeColor) => OutlinedButton.styleFrom(
    side: BorderSide(color: typeColor, width: 2),
    foregroundColor: typeColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );

  static ButtonStyle evolveButton(Color typeColor) => FilledButton.styleFrom(
    backgroundColor: typeColor.withValues(alpha: 0.85),
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
  // ==== SPECIAL CARD STYLES ====
  static CardTheme cardTheme(PokemonColorType? type) => CardTheme(
    color: type?.primary.withValues(alpha: 0.9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    elevation: 6,
    shadowColor: type?.secondary.withValues(alpha: 0.6),
    margin: const EdgeInsets.all(8),
  );
}
