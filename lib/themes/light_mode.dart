import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade300,  // Replacing 'background' with 'surface'
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade100,
    tertiary: Colors.white,  // Keeping your tertiary color
    inversePrimary: Colors.grey.shade700,
  ),
);
