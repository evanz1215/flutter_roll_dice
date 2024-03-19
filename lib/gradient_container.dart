import 'package:flutter/material.dart';
import 'package:flutter_roll_dice/dice_roller.dart';
import 'package:flutter_roll_dice/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  // const GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key})
      : colors = [
          const Color.fromARGB(255, 54, 14, 92),
          const Color.fromARGB(255, 223, 18, 172),
          const Color(0xFF42A5F5),
        ];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
          stops: const <double>[0.0, 0.5, 1.0],
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
