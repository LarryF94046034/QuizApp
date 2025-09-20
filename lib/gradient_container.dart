import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  void RollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 255, 61, 26),
            const Color.fromARGB(255, 247, 255, 7),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
    );
  }
}
