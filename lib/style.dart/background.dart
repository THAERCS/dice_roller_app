import 'package:flutter/material.dart';
import '../dice_roller.dart';

var beginAlignments = Alignment.bottomLeft;
var endAlignments = Alignment.topRight;

// ignore: must_be_immutable
class Background extends StatelessWidget {
  const Background(this.col, {super.key});

  final List<Color> col;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: col,
          begin: beginAlignments,
          end: endAlignments,
        ),
      ),
      child: DiceRoller(),
    );
  }
}

class TextsStyle extends StatelessWidget {
  const TextsStyle(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(style: TextStyle(color: Colors.white, fontSize: 50), text);
  }
}
