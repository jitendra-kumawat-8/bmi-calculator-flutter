
import 'package:bmi_calculator/InputPage.dart';
import 'Result.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => InputPage());
      case '/Result' :
        if (args is PageArguments) {
          return MaterialPageRoute(
            builder: (_) =>
                ResultsPage(
                  arguments: args,
                ),

          );
        }
        return MaterialPageRoute(builder: (_) => InputPage());
      default:
        return MaterialPageRoute(builder: (_) => InputPage());
    }
  }

}