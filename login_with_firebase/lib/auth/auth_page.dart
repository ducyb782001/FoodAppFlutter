import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_with_firebase/pages/login_page.dart';

import '../pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      print('Dang o auth_page, login true');
      return LoginPage(
        showRegisterPage: toggleScreens,
      );
    } else {
      print('Dang o auth_page, login false');
      return RegisterPage(
        showLoginPage: toggleScreens,
      );
    }
  }
}
