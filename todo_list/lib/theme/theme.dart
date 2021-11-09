import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
      colorScheme: const ColorScheme.dark(
          primary: Colors.black, secondary: Colors.orange),
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(color: Colors.white10),
      scaffoldBackgroundColor: Colors.grey[700],
      iconTheme: const IconThemeData(color: Colors.white),
      hintColor: Colors.orange,
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.white70),
      textTheme: const TextTheme(
        headline4: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        headline5: TextStyle(fontSize: 23, fontWeight: FontWeight.w200),
      ));
}

ThemeData lightTheme() {
  return ThemeData(
      colorScheme: const ColorScheme.light(
          primary: Colors.purple, secondary: Colors.orange),
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(color: Colors.deepPurple),
      scaffoldBackgroundColor: Colors.white70,
      iconTheme: const IconThemeData(color: Colors.white),
      hintColor: Colors.orange,
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.orange),
      textTheme: const TextTheme(
        headline4: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        headline5: TextStyle(fontSize: 23, fontWeight: FontWeight.w200),
      ));
}
