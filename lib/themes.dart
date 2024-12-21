import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appThemem = ThemeData(
    primaryColor: Colors.amberAccent,
    scaffoldBackgroundColor: Colors.blue.shade100,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24)),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 24, color: Colors.white),
      headlineMedium: TextStyle(
        fontSize: 22,
        color: Colors.indigo,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
