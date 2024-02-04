import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white,
    ),
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color.fromRGBO(30, 30, 30, 1),
        onPrimary: Color.fromRGBO(255, 255, 255, 1),
        secondary: Color.fromRGBO(133, 83, 158, 1),
        onSecondary: Color.fromRGBO(255, 255, 255, 1),
        error: Color.fromRGBO(255, 90, 80, 1),
        onError: Color.fromRGBO(255, 255, 255, 1),
        background: Color.fromRGBO(30, 30, 30, 1),
        onBackground: Color.fromRGBO(255, 255, 255, 1),
        surface: Color.fromRGBO(45, 45, 45, 1),
        onSurface: Color.fromRGBO(255, 255, 255, 1)));

final ThemeData lightTheme = ThemeData(
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.black,
    ),
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color.fromRGBO(244, 244, 244, 1),
        onPrimary: Color.fromRGBO(30, 30, 30, 1),
        secondary: Color.fromRGBO(135, 171, 215, 1),
        onSecondary: Color.fromRGBO(30, 30, 30, 1),
        error: Color.fromRGBO(255, 90, 80, 1),
        onError: Color.fromRGBO(255, 255, 255, 1),
        background: Color.fromRGBO(244, 244, 244, 1),
        onBackground: Color.fromRGBO(30, 30, 30, 1),
        surface: Color.fromRGBO(177, 176, 176, 1),
        onSurface: Color.fromRGBO(255, 255, 255, 1)));
