import 'package:flutter/material.dart';

class Height extends StatelessWidget {
  const Height(
      {super.key, required this.currentHeight, required this.onChangedHeight});

  final double currentHeight;
  final ValueChanged<double> onChangedHeight;

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
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "${currentHeight.toInt().toString()} cm",
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: currentHeight,
                min: 100,
                max: 200,
                onChanged: onChangedHeight,
                activeColor: Colors.orange,
                inactiveColor: Colors.black,
              )
            ],
          ),
        ));
  }
}
