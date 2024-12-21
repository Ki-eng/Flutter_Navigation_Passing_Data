import 'package:flutter/material.dart';
import 'package:navigation_passing_data_app/aboutScreen.dart';
import 'package:navigation_passing_data_app/myApp.dart';
import 'resultScreen.dart';
import 'quiz.dart';

class customRoute {
  // static  GenerateRoute(settings) {
  //     if (settings.name == '/result') {
  //       final arg = settings.arguments as Quiz;
  //       return MaterialPageRoute(
  //         builder: (context) => Resultscreen(
  //           score: arg.score,
  //           totalAttempted: arg.totalAttempted,
  //         ),
  //       );
  //     }
  //   }

  static GenerateRoute(RouteSettings) {
    switch (RouteSettings.name) {
      case Resultscreen.routeName:
        final arg = RouteSettings.arguments as Quiz;
        return MaterialPageRoute(
          builder: (context) => Resultscreen(
            score: arg.score,
            totalAttempted: arg.totalAttempted,
          ),
        );

      case Aboutscreen.routeName:
        return MaterialPageRoute(builder: (context) => Aboutscreen());

      //case GuessCountry.routeName:
      default:
        return MaterialPageRoute(builder: (context) => GuessCountry());
    }
  }
}
