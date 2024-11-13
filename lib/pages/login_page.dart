import 'package:flutter/material.dart';
import '../utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Utils.flushBarErrorMessage("Error message", context);
              },
              child: const Text("Error FlushBar"),
            ),
            InkWell(
              onTap: () {
                Utils.toastMessage('No internet connection');
              },
              child: const Text("Toast message"),
            ),
            InkWell(
              onTap: () {
                Utils.snackBar("snack Bar message", context);
              },
              child: const Text("Click me"),
            )
          ],
        ),
      ),
    );
  }
}
