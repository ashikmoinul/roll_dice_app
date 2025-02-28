import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  // Random Number of Dice
  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset('images/dice-$currentDice.png', width: 200)),
        SizedBox(height: 12),
        TextButton(
          onPressed: rollDice,
          child: Text(
            'Roll Dice',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
