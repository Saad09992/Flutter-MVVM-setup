import 'package:flutter/material.dart';
import 'package:mvvm/page_model/auth_model.dart';
import 'package:mvvm/page_model/user_page_model.dart';
import 'package:mvvm/resources/colors.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthModel()),
        ChangeNotifierProvider(create: (_) => UserPageModel()),
      ],
      child: MaterialApp(
        title: "MVVM",
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: AppColors.appBarColor,
                centerTitle: true,
                titleTextStyle:
                    TextStyle(color: AppColors.buttonTextColor, fontSize: 30))),
        // landing page
        initialRoute: RoutesName.splash,
        // sends current/changed route to generateRoute method in Routes class
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
