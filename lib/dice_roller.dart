import 'package:flutter/material.dart';
import 'dart:math';

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});

  @override
  State<diceRoller> createState() => _diceRollerState();
}

class _diceRollerState extends State<diceRoller> {
  final randomize = Random();
  var currentDiceRoll = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/img/dice-$currentDiceRoll.png",
            width: 200,
          ),
          TextButton(onPressed: () {
            
           
            setState(() {
              currentDiceRoll = randomize.nextInt(6)+ 1;
              
            });
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 28
              ),
              ),
           child: const Text('Roll Dice'))
        ],
      );
  }
}