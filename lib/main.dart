import 'package:basics/screens/calculator/calculator.dart';
import 'package:basics/screens/home/home_screen.dart';
import 'package:basics/screens/login/login.dart';
import 'package:basics/screens/register/register.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "home": (_) => HomeScreen(),
        "login":(_) => const LoginScreen(),
        "register" : (_) => const RegisterScreen(),
        CalculatorScreen.route:(_)=> CalculatorScreen(),
        },
        initialRoute: CalculatorScreen.route,
    );
  }
}
