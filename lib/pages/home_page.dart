import 'package:flutter/material.dart';
import 'package:mvvm/page_model/user_page_model.dart';
import 'package:mvvm/resources/components/round_button.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final userPrefrences = Provider.of<UserPageModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundButton(
              title: "Logout",
              onPress: () {
                userPrefrences.remove().then((value) {
                  Navigator.pushNamed(context, RoutesName.login);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
