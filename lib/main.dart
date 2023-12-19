import 'package:flutter/material.dart';
import 'package:roll_dice/dice_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: DiceContainer(
            Color.fromARGB(255, 64, 135, 193), Color.fromARGB(255, 4, 26, 63)),
      ),
    ),
  );
}
