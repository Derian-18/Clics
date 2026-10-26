import 'package:flutter/material.dart';

class Contador1 extends StatefulWidget {
  const Contador1({super.key});

  @override
  State<Contador1> createState() => _Contador1State();
}

class _Contador1State extends State<Contador1> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Pantalla del Contador de +1")),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: const StadiumBorder(),
            backgroundColor: clickCounter > 0
                ? const Color.fromARGB(255, 99, 193, 102)
                : Colors.grey,
            onPressed: () {
              if (clickCounter > 0) {
                setState(() {
                  clickCounter--;
                });
              }
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}