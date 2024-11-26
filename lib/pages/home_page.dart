import 'package:flutter/material.dart';
import '../utilities/calculate_bmi.dart';
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
            CalculationButton(
                calculate: () => calculateBMI(context, height, weight))
          ],
        ),
      ),
    );
  }
}
