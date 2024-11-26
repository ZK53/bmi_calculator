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
          child: GestureDetector(
            onTap: () => onGenderChanged('male'),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 10, bottom: 20, right: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: selectedGender == 'male'
                        ? Border.all(color: Colors.blue, width: 3)
                        : null,
                    color: Colors.blueGrey.shade900,
                    borderRadius: BorderRadius.circular(15)),
                height: 180,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.male,
                        size: 90,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "Male",
                      style: TextStyle(fontSize: 24),
                    ),
                    // Radio(
                    //     activeColor: Colors.blue,
                    //     value: 'male',
                    //     groupValue: selectedGender,
                    //     onChanged: (value) {
                    //       onGenderChanged(value!);
                    //     })
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderChanged('female'),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 10, bottom: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    border: selectedGender == 'female'
                        ? Border.all(color: Colors.pink, width: 3)
                        : null,
                    color: Colors.blueGrey.shade900,
                    borderRadius: BorderRadius.circular(15)),
                height: 180,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.female,
                        size: 100,
                        color: Colors.pink,
                      ),
                    ),
                    Text(
                      "Female",
                      style: TextStyle(fontSize: 24),
                    ),
                    // Radio(
                    //     activeColor: Colors.blue,
                    //     value: 'female',
                    //     groupValue: selectedGender,
                    //     onChanged: (value) {
                    //       onGenderChanged(value!);
                    //     })
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
