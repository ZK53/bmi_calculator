import 'package:flutter/material.dart';

class CalculationButton extends StatelessWidget {
  const CalculationButton({super.key, required this.calculate});

  final Function? calculate;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => calculate,
        child: const Text(
          'CALCULATE BMI',
          style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              backgroundColor: Colors.deepOrange),
        ));
  }
}
