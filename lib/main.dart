import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MVVM",
      // landing page
      initialRoute: RoutesName.login,
      // sends current/changed route to generateRoute method in Routes class
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
