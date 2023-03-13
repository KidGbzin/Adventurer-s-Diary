import 'package:flutter/material.dart';

import 'palette.dart';

// Set the style of the material theme, create styles by this class whenever possible.
ThemeData theme(Palette palette) {
  return ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: palette.foregroundColor,
      centerTitle: true,
      elevation: 0,
      shape: Border(
        bottom: BorderSide(
          color: palette.dividerColor,
        ),
      ),
      toolbarHeight: 60,
    ),
    extensions: [
      palette,
    ],
    highlightColor: const Color(0x00000000),
    scaffoldBackgroundColor: palette.backgroundColor,
    splashColor: const Color(0x00000000),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: palette.gradientColors,
        ),
      ),
      unselectedLabelColor: const Color(0xFF9E9E9E),
    ),
  );
}