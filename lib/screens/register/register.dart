import 'package:flutter/material.dart';

import '../calculator/calculator.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, CalculatorScreen.route);},
                child: Text("Home screen")),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Login Screen"))
          ],
        ),
      ),
    );
  }
}