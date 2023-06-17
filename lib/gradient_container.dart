import 'package:flutter/material.dart';
import 'package:flutter_application_230616/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;
  //* super refers to the parent class
  const GradientContainer({super.key})
      : color1 = Colors.limeAccent,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  //* Called for you, automatically, by Flutter (when it renders the user interface)
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
