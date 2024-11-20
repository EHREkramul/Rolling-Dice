import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 6;
  void RollDice() {
    setState(() {
      activeDice = randomizer.nextInt(6) + 1;
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDice.png',
          width: 200,
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: RollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Text('Roll Dice'),
        )
      ],
    );
  }
}
