import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget{
  String imagePath;
  String text;
  HomeTile({required this.imagePath , required this.text});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:Alignment.bottomRight,
      children: [
        Image.asset(imagePath),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 12),
            margin: const EdgeInsets.all(12),
            color: const Color(0x809601c7),
            child:  Text(text , style: TextStyle(color: Colors.white , fontSize: 16),)
        ),
      ],
    );
  }

}