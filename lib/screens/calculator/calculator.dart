import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  static const String route="calculator";
   CalculatorScreen({super.key});
   int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("0"),
          onPressed: (){
            counter++;
            print("counter=$counter");
          },
        ),
      ),
    );
  }
}
