import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget{
  const TextStyling(this.text, {super.key});


  final String text;

  @override
  Widget build(context){
    return Text(
      text,
    style: TextStyle(
      fontSize: 28,
      color: Colors.yellow,
    ),);
  }
}