import 'package:flutter/material.dart';

class ShowBmi extends StatelessWidget {
  const ShowBmi({super.key, this.bmi});

  final num? bmi;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Your BMI is"),
      titleTextStyle: const TextStyle(fontSize: 30, color: Colors.white),
      content: Text(" ${bmi.toString()}"),
      contentTextStyle: const TextStyle(fontSize: 50, color: Colors.white),
      backgroundColor: Colors.blueGrey,
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "OK",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ))
      ],
    );
  }
}
