import 'package:apni_mandi/views/login/screen/login_screen.dart';
import 'package:apni_mandi/views/register/screen/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthToggleView extends StatefulWidget {
  const AuthToggleView({Key? key}) : super(key: key);

  @override
  _AuthToggleViewState createState() => _AuthToggleViewState();
}

class _AuthToggleViewState extends State<AuthToggleView> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginScreen(
        toggleView: toggleView,
      );
    } else {
      return SignupScreen(toggleView: toggleView);
    }
  }
}