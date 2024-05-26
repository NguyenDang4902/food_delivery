// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/text_field.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    // get instance of auth service
    final _authService = AuthService();

    // sign in
    try {
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }
    // display error
    catch (err) {
              showDialog(context: context, builder: (context) => AlertDialog(
          title: Text(err.toString()),
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(
            height: 25,
          ),

          // message, app slogan
          Text(
            "Food Delivery App",
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
          const SizedBox(
            height: 25,
          ),

          // email textfield
          MyTextField(
              controller: emailController,
              hintText: "Email",
              obscuredText: false),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscuredText: true),
          const SizedBox(
            height: 10,
          ),
          // sign in button
          MyButton(
            text: "Sign In",
            onTap: login,
          ),
          const SizedBox(
            height: 25,
          ),
          // register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register now",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
