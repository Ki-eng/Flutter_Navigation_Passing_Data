import 'package:flutter/material.dart';
import 'package:navigation_passing_data_app/routes.dart';
import 'package:navigation_passing_data_app/themes.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => customRoute.GenerateRoute(settings),
      initialRoute: '/',

      //home: GuessCountry(),

      theme: AppTheme.appThemem,
    );
  }
}
