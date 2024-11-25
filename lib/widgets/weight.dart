import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blueGrey.shade900,
              borderRadius: BorderRadius.circular(15)),
          height: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Weight",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                weight.toString(),
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          weight -= 1;
                        });
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                        size: 30,
                        color: Colors.orange,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          weight += 1;
                        });
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
