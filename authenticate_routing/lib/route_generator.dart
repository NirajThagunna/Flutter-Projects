import 'package:authenticate_routing/second_page.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const FirstPage());

      case '/second':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondRoute(
              data: args,
            ),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
          ),
        );
      }
    );
  }
}