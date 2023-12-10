import 'package:e_learning_ui/screens/login_screens/login_screen_one.dart';
import 'package:e_learning_ui/screens/register_screens/register_screen_email.dart';
import 'package:e_learning_ui/screens/register_screens/register_screen_name.dart';
import 'package:e_learning_ui/screens/register_screens/register_screen_one.dart';
import 'package:e_learning_ui/screens/register_screens/register_screen_age.dart';
import 'package:e_learning_ui/screens/register_screens/register_screen_password.dart';
import 'package:e_learning_ui/screens/screen_one.dart';
import 'package:e_learning_ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash_screen",
      routes: {
        "splash_screen": (context) => const SplashScreen(),
        "screen_one": (context) => const ScreenOne(),
        "login_screen_one": (context) => const LoginScreenOne(),
        "register_screen_one": (context) => const RegisterScreenOne(),
        "register_screen_age": (context) => const RegisterScreenAge(),
        "register_screen_name": (context) => const RegisterScreenName(),
        "register_screen_email": (context) => const RegisterScreenEmail(),
        "register_screen_password": (context) => const RegisterScreenPassword(),
      },
    );
  }
}
