import 'package:flutter/material.dart';

class CustomTextTheme extends TextTheme {
  CustomTextTheme({required ColorScheme colorScheme})
      : super(
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: colorScheme.secondary,
          ),
          titleMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: colorScheme.primary,
          ),
          bodyMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: colorScheme.tertiary,
          ),
          labelMedium:  TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: colorScheme.outline,
          ),
        );
}
