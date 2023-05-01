import 'package:flutter/material.dart';

class CustomChipTheme extends ChipThemeData {
  CustomChipTheme({required ColorScheme colorScheme})
      : super(
          backgroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          labelStyle: TextStyle(fontSize: 12, color: colorScheme.onPrimary),
          side: BorderSide.none,
          shape: const StadiumBorder(),
        );
}
