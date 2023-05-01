import 'package:flutter/material.dart';

class LightColorScheme extends ColorScheme {
  const LightColorScheme()
      : super.light(
          brightness: Brightness.light,
          primary: const Color(0xFFED5992),
          onPrimary: const Color(0xFFFFFFFF),
          secondary: const Color(0xFF2F1767),
          tertiary: const Color(0xFF4A4A4A),
          outline: const Color(0xFF8C8C8C),
        );
}
