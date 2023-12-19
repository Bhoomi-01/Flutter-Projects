import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 2;

  void rollDice() {
    //var diceRoll = Random().nextInt(6) + 1; //1 to 6
    setState(() {
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
      currentDiceRoll = randomizer.nextInt(6) +
          1; // instead of using Random() here it is initialized globally.
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 150,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 38)),
            child: const Text('Roll the Dice'))
      ],
    );
  }
}
