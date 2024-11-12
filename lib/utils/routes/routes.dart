import 'package:flutter/material.dart';
import 'package:mvvm/pages/home_page.dart';
import 'package:mvvm/pages/login_page.dart';
import 'package:mvvm/pages/sign_up_page.dart';
import 'package:mvvm/utils/routes/routes_name.dart';

class Routes {
  // generateRoute method
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // the settings contain the route and displays the page accrdingly
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomePage());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage());
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpPage());
      // display this if route is invalid
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
  }
}
