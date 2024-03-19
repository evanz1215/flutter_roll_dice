import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    setState(() {
      // 使用setState()來更新UI
      // ramdom 1~6
      var randomNumber = 1 + (DateTime.now().millisecond % 6);
      activeDiceImage = "assets/images/dice-$randomNumber.png";
      // activeDiceImage = "assets/images/dice-4.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //占用最小的空间，預設為最大(MainAxisSize.max)
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        // const SizedBox(height: 20), // 2. 使用SizedBox,來調整上方的間距
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20), // 1.使用padding,來調整上方的間距
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}