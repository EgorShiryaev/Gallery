import 'package:flutter/material.dart';

class CustomTabBarTheme extends TabBarTheme {
  CustomTabBarTheme({required ColorScheme colorScheme})
      : super(
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          labelColor: colorScheme.onBackground,
          unselectedLabelColor: colorScheme.outline,
        );
}
