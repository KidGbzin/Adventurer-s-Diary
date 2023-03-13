import 'package:flutter/material.dart';

import 'palette.dart';

// This singleton controller manages the theme in the application.
class Themes {
  Themes._();

  static final Themes _instance = Themes._();

  factory Themes() {
    return _instance;
  }

  // Call this variable to get the actual theme palette.
  static late Palette palette;

  // Initialize the theme controller and start the late variables, must be initialized after material.
  void initialize(BuildContext context) {
    palette = Theme.of(context).extension<Palette>()!;
  }
}