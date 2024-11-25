import 'package:flutter/material.dart';
import '../widgets/calculation_button.dart';
import '../widgets/gender.dart';
import '../widgets/height.dart';
import '../widgets/age.dart';
import '../widgets/weight.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String gender = 'male';
  double height = 180;
  int age = 18;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text(
                  "BMI",
                  style: TextStyle(fontSize: 40),
                ),
                Gender(
                  selectedGender: gender,
                  onGenderChanged: (newGender) {
                    setState(() {
                      gender = newGender;
                    });
                  },
                ),
                Height(
                  currentHeight: height,
                  onChangedHeight: (newHeight) {
                    setState(() {
                      height = newHeight;
                    });
                  },
                ),
                Row(
                  children: [
                    Age(
                      age: age,
                      onAgeChanged: (newAge) {
                        setState(() {
                          age = newAge;
                        });
                      },
                    ),
                    Weight(
                      weight: weight,
                      onWeightChanged: (newWeight) {
                        setState(() {
                          weight = newWeight;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
            CalculationButton(calculate: () => calculateBMI(context))
          ],
        ),
      ),
    );
  }

  void calculateBMI(BuildContext context) {
    double bmi = weight / ((height / 100) * (height / 100));

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Your BMI is"),
            titleTextStyle: const TextStyle(fontSize: 30, color: Colors.white),
            content: Text(" ${bmi.toStringAsFixed(2)}"),
            contentTextStyle:
                const TextStyle(fontSize: 50, color: Colors.white),
            backgroundColor: Colors.blueGrey,
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
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
