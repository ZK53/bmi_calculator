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
            CalculationButton(calculate: () => _calculateBMI(context))
          ],
        ),
      ),
    );
  }

  void _messageDialog(
      BuildContext context, String message, String content, Color color) {
    showDialog(
        //    barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            titlePadding: const EdgeInsets.only(right: 5, left: 5),
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 80, left: 0),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                    iconSize: 40,
                  ),
                ),
                Text(
                  message,
                  style: TextStyle(fontSize: 30, color: color),
                ),
              ],
            ),
            content: Text(
              content,
              style: TextStyle(fontSize: 22, color: color),
            ),
            contentPadding:
                const EdgeInsets.only(bottom: 30, left: 40, right: 40),
          );
        });
  }

  void _calculateBMI(BuildContext context) {
    double bmi = weight / ((height / 100) * (height / 100));

    String message;
    String content;
    IconData icon = Icons.accessibility;
    Color color = Colors.lightGreen;

    if (bmi < 18.5) {
      message = "Underweight";
      content =
          "Your BMI indicates that you are underweight. It's important to maintain a healthy weight. Consider consulting a healthcare provider for guidance.";
      icon = Icons.sentiment_dissatisfied;
      color = Colors.blueAccent;
    } else if (bmi >= 18.5 && bmi < 25) {
      message = "Normal Weight";
      content =
          "Your BMI is within the normal weight range. Keep up the good work and maintain a balanced diet and regular exercise.";
      icon = Icons.sentiment_satisfied_alt;
      color = Colors.green;
    } else if (bmi >= 25 && bmi < 30) {
      message = "Overweight";
      content =
          "Your BMI indicates that you are overweight. Consider adopting a healthy plan and incoporating regular exercise into your routine.";
      icon = Icons.sentiment_neutral;
      color = Colors.orange;
    } else {
      message = "Obese";
      content =
          "Your BMI suggests obesity, It's important to consult a healthcare provider to dicuss ways to achieve a healthier weight.";
      icon = Icons.sentiment_very_dissatisfied;
      color = Colors.red;
    }

    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Icon(
              icon,
              color: color,
              size: 70,
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " ${bmi.toStringAsFixed(1)}",
                  style: TextStyle(fontSize: 40, color: color),
                ),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 30,
                    color: color,
                  ),
                )
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () =>
                      _messageDialog(context, message, content, color),
                  icon: Icon(
                    Icons.error,
                    color: color,
                    size: 30,
                  )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "OK",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ))
            ],
          );
        });
  }
}
