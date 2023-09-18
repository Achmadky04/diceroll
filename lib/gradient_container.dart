import 'package:dice_roll/style_text.dart';
import 'package:flutter/material.dart';
import 'package:dice_roll/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget {
const GradientContainer(this.colors, {super.key});


  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAlignment, end: endAlignment)),
      child: Center(
          child: diceRoller(),
      ),
    );
  }
}
