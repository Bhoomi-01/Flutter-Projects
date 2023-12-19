import 'package:flutter/material.dart';
import 'package:roll_dice/dice_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: DiceContainer(Colors.blue, Color.fromARGB(255, 4, 26, 63)),
      ),
    ),
  );
}
