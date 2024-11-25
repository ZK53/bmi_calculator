import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender(
      {super.key, required this.selectedGender, required this.onGenderChanged});

  final String? selectedGender;
  final ValueChanged<String> onGenderChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(15)),
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.male,
                    size: 50,
                    color: Colors.blue,
                  ),
                  const Text(
                    "male",
                    style: TextStyle(fontSize: 24),
                  ),
                  Radio(
                      activeColor: Colors.blue,
                      value: 'male',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        onGenderChanged(value!);
                      })
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 10, bottom: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(15)),
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.female,
                    size: 50,
                    color: Colors.pink,
                  ),
                  const Text(
                    "female",
                    style: TextStyle(fontSize: 24),
                  ),
                  Radio(
                      activeColor: Colors.blue,
                      value: 'female',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        onGenderChanged(value!);
                      })
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
