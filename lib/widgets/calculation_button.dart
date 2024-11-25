import 'package:flutter/material.dart';

class CalculationButton extends StatelessWidget {
  const CalculationButton({super.key, required this.calculate});

  final VoidCallback calculate;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(double.infinity, 100))),
        onPressed: calculate,
        child: const Text(
          'CALCULATE BMI',
          style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              backgroundColor: Colors.deepOrange),
        ));
  }
}
