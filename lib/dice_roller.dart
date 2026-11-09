import 'package:flutter/material.dart';
import 'style.dart/background.dart';
import 'dart:math';

final randomizer1 = Random();
final randomizer2 = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoller1 = 1;
  var currentDiceRoller2 = 1;
  void rollDice() {
    setState(() {
      currentDiceRoller1 = randomizer1.nextInt(6) + 1;
      currentDiceRoller2 = randomizer2.nextInt(6) + 1;
    });
    print('Dice rolled! New image:');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(width: 55),
            Image.asset(
              'assets/images/dice-$currentDiceRoller1.png',
              width: 150,
            ),
            Image.asset(
              'assets/images/dice-$currentDiceRoller2.png',
              width: 150,
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          style: TextStyle(color: Colors.white, fontSize: 30),
          'Total Amount : ${currentDiceRoller1 + currentDiceRoller2}',
        ),
        SizedBox(height: 40),
        TextButton(
          onPressed: rollDice,
          onLongPress: rollDice,
          child: const TextsStyle('Roll Dice'),
        ),
      ],
    );
  }
}
