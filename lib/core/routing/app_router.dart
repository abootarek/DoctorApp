
import 'package:doc_app_new/core/routing/routs.dart';
import 'package:doc_app_new/featuers/loginscreen/ui/logins_screen.dart';
import 'package:doc_app_new/featuers/onbording/ui/onbording_screen.dart';
import 'package:flutter/material.dart';


class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // onbordingscreen
      case Routes.onbordingscreen:
        return MaterialPageRoute(
          builder: (context) => const OnbordingScreen(),
        );
// loginScreen
      case Routes.loginscreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
