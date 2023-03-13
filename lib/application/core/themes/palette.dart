import 'package:flutter/material.dart';

// A theme extension to manage the theme colors.
class Palette extends ThemeExtension<Palette> {
  final Color backgroundColor;
  final Color dividerColor;
  final Color foregroundColor;
  final List<Color> gradientColors;
  final Color textColor;

  Palette({
    required this.backgroundColor,
    required this.dividerColor,
    required this.foregroundColor,
    required this.gradientColors,
    required this.textColor,
  });

  // Overrides the default Flutter theme with the new theme color.
  @override
  ThemeExtension<Palette> copyWith() {
    return Palette(
      backgroundColor: backgroundColor,
      dividerColor: dividerColor,
      foregroundColor: foregroundColor,
      gradientColors: gradientColors,
      textColor: textColor,
    );
  }
  
  // Creates a interpolation when overriding the previous theme.
  @override
  ThemeExtension<Palette> lerp(ThemeExtension<Palette>? other, double t) {
    if (other is! Palette) {
      return this;
    }
    return Palette(
      backgroundColor: backgroundColor,
      dividerColor: dividerColor,
      foregroundColor: foregroundColor,
      gradientColors: gradientColors,
      textColor: textColor,
    );
  }
}