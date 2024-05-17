import 'package:authorization_neobis/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(const MyApp());
}

SharedPreferences? localStorage;

TextEditingController emailController = TextEditingController();
TextEditingController pwdController = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static Future init() async {
    localStorage = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
