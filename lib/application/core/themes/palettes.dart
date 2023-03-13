import 'dart:ui';

import 'palette.dart';

// Manages the collection of palettes, always set theme colors here.
class Palletes {
  static final Palette sofys = Palette(
    backgroundColor: const Color(0xFFF7F6F9),
    dividerColor: const Color(0xFFF5F5F5),
    foregroundColor: const Color(0xFFFFFFFF),
    gradientColors: [
      const Color(0xFF2196F3),
      const Color(0xFF4CAF50),
      const Color(0xFF8BC34A),
    ],
    textColor: const Color(0xFF2A2A2A),
  );
}