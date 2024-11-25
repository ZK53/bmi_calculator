import 'package:flutter/material.dart';

class Age extends StatelessWidget {
  const Age({super.key, required this.age, required this.onAgeChanged});

  final int age;
  final ValueChanged<int> onAgeChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blueGrey.shade900,
              borderRadius: BorderRadius.circular(15)),
          height: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "AGE",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                age.toString(),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        onAgeChanged(age > 0 ? age - 1 : age);
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                        size: 30,
                        color: Colors.orange,
                      )),
                  IconButton(
                      onPressed: () {
                        onAgeChanged(age + 1);
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        size: 30,
                        color: Colors.orange,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
