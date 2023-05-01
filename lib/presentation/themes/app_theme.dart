import 'package:flutter/material.dart';

import 'custom_app_bar_theme.dart';
import 'custom_chip_theme.dart';
import 'custom_tab_theme.dart';
import 'custom_text_theme.dart';
import 'light_color_scheme.dart';

class AppTheme {
  static ThemeData _baseTheme({required ColorScheme colorScheme}) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Roboto',
      textTheme: CustomTextTheme(colorScheme: colorScheme),
      colorScheme: colorScheme,
      tabBarTheme: CustomTabBarTheme(colorScheme: colorScheme),
      chipTheme: CustomChipTheme(colorScheme: colorScheme),
      appBarTheme: const CustomAppBarTheme(),
    );
  }

  static ThemeData get light {
    const colorScheme = LightColorScheme();

    return _baseTheme(colorScheme: colorScheme);
  }

  static EdgeInsets get pagePadding {
    return const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 16,
    );
  }
}
