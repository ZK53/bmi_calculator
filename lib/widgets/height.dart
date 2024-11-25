import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  double height = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade900,
            borderRadius: BorderRadius.circular(15)),
        height: 190,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Height",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                height.toInt().toString(),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: height,
                min: 100,
                max: 200,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
                activeColor: Colors.orange,
                inactiveColor: Colors.black,
              )
            ],
          ),
        ));
  }
}
