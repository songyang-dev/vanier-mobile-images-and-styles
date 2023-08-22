import 'package:flutter/material.dart';

var dark_theme = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.dark,
  primaryColor: Colors.lightBlue[800],

  // Define the default font family.
  fontFamily: 'Georgia',

  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
    bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
  ),
);

var light_theme = ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Colors.lightBlue[800],

  // Define the default font family.
  fontFamily: 'Georgia',

  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
    bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
  ),
);
