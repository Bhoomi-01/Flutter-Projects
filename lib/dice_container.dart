import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class DiceContainer extends StatelessWidget {
  const DiceContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void rollDice() {
    //..
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/images/dice-1.png',
            width: 150,
          ),
          TextButton(onPressed: rollDice, child: const Text('Roll the Dice'))
        ],
      )),
    );
  }
}
