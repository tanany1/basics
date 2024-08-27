import 'package:flutter/material.dart';

class HomeScreenTitles extends StatelessWidget{
  String text ;
  HomeScreenTitles(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        color: Colors.purple,
        child:  Text( text , style: TextStyle(color: Colors.white ,fontSize: 18),textAlign: TextAlign.center),
      ),
    );
  }

}