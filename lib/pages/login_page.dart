import 'package:flutter/material.dart';
import 'package:mvvm/page_model/auth_model.dart';
import 'package:mvvm/resources/components/round_button.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import '../utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  ValueNotifier<bool> hidePassword = ValueNotifier<bool>(true);

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    hidePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authPageModel = Provider.of<AuthModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                focusNode: emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                onFieldSubmitted: (val) {
                  Utils.fieldFocusChange(
                      context, emailFocusNode, passwordFocusNode);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ValueListenableBuilder(
                  valueListenable: hidePassword,
                  builder: (context, value, child) {
                    return TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          prefixIcon: const Icon(Icons.lock_open),
                          suffixIcon: InkWell(
                              onTap: () {
                                hidePassword.value = !hidePassword.value;
                              },
                              child: hidePassword.value
                                  ? const Icon(Icons.visibility_off_outlined)
                                  : const Icon(Icons.visibility))),
                      obscuringCharacter: "*",
                      focusNode: passwordFocusNode,
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      obscureText: hidePassword.value,
                    );
                  }),
              const SizedBox(
                height: 30,
              ),
              RoundButton(
                title: "Login",
                onPress: () {
                  if (emailController.text.isEmpty) {
                    Utils.flushBarErrorMessage(
                        "Please enter your username", context);
                  } else if (passwordController.text.isEmpty) {
                    Utils.flushBarErrorMessage(
                        "Please enter your password", context);
                  } else if (passwordController.text.length < 6) {
                    Utils.flushBarErrorMessage(
                        "Password must contain 6 letter at least", context);
                  } else {
                    Map data = {
                      'email': emailController.text,
                      'password': passwordController.text
                    };
                    authPageModel.loginApi(data, context);
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.signup);
                },
                child: const Text("Dont have an account? Click here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
