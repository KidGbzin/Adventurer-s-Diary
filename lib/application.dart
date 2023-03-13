import 'package:flutter/material.dart';

import 'application/core/themes/palettes.dart';
import 'application/core/themes/styles.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(Palletes.sofys),
    );
  }
}