import 'package:bmi_calcutaltor/widgets/calculation_button.dart';
import 'package:flutter/material.dart';

import '../widgets/gender.dart';
import '../widgets/height.dart';
import '../widgets/age.dart';
import '../widgets/weight.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String gender = 'male';
  final int height = 180;
  final int age = 18;
  final int weight = 60;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text(
              "BMI",
              style: TextStyle(fontSize: 40),
            ),
            const Gender(),
            const Height(),
            const Row(
              children: [Age(), Weight()],
            ),
            CalculationButton(calculate: (context) => calculateBMI(context, gender, height, age,weight))
          ],
        ),
      ),
    );
  }

  void calculateBMI(
      BuildContext context, String gender, int height, int age, int weight) {
    //num? bmi = 25;
    // if (gender == 'male') {
    //   // calculate bmi for male
    // } else {
    //   // calculate bmi for female

    // }

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Your BMI is"),
            titleTextStyle: const TextStyle(fontSize: 30, color: Colors.white),
            //content: Text(" ${bmi.toString()}"),
            //contentTextStyle: const TextStyle(fontSize: 50, color: Colors.white),
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
        });
  }
}
