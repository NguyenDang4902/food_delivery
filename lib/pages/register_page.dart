// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/text_field.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // register method
  void register() async {
    // get auth service
    final _authService = AuthService();

    // if password match => create user
    if (passwordController.text == confirmPasswordController.text) {
      // creating user
      try {
        await _authService.signUpWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (err) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(err.toString()),
                ));
      }
    }
    // if password not match => show error
    else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Password is not match. Try again!"),
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
            "Let's create an Account",
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

          MyTextField(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obscuredText: true),

          const SizedBox(
            height: 10,
          ),

          // sign up button
          MyButton(
            text: "Sign Up",
            onTap: register,
          ),
          const SizedBox(
            height: 25,
          ),
          // already have an account
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login here",
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
