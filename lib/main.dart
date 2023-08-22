import 'package:flutter/material.dart';
import 'home/home.dart';
import 'themes.dart';

void main(List<String> args) {
  runApp(const VacationApp());
}

class VacationApp extends StatelessWidget {
  const VacationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {"/": (context) => const HomeScreen()},
      theme: dark_theme,
    );
  }
}
