import 'package:flutter/material.dart';

enum PokemonColorType {
  fire(Color(0xFFFF6B6B), Color(0xFFFF8E53)),
  water(Color(0xFF4D96FF), Color(0xFF00B4D8)),
  grass(Color(0xFF38B000), Color(0xFF70E000)),
  electric(Color(0xFFFFD60A), Color(0xFFFFB703)),
  psychic(Color(0xFFC77DFF), Color(0xFF9D4EDD)),
  normal(Color(0xFFBDBDBD), Color(0xFFE0E0E0)),
  dark(Color(0xFF1E1E1E), Color(0xFF3A3A3A)),
  fairy(Color(0xFFFF99C8), Color(0xFFFFC8DD));

  final Color primary;
  final Color secondary;
  const PokemonColorType(this.primary, this.secondary);

  /// Gradient for backgrounds or cards
  LinearGradient get gradient => LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// For readable text or UI labels
  String get label => name[0].toUpperCase() + name.substring(1);

  /// For button color access
  Color get textColor =>
      this == PokemonColorType.electric || this == PokemonColorType.fairy
      ? Colors.black
      : Colors.white;
}

enum PokemonStatsColor {
  HP(Color(0xFF38B000)),
  ATTACK(Color(0xFF4D96FF)),
  DEFENSE(Color(0xFFFF6B6B)),
  SPECIAL_ATTACK(Color(0xFFFFD60A)),
  SPECIAL_DEFENSE(Color.fromARGB(255, 96, 81, 4)),
  SPEED(Color.fromARGB(255, 35, 178, 255));

  final Color color;
  const PokemonStatsColor(this.color);
}
