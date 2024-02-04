import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        body: const DicePage(),
        backgroundColor: Colors.red[800],
        appBar: AppBar(
          title: const Text('Dicey', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red[800],
          centerTitle: true,
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceRoll = 1;
  int rightDiceRoll = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$leftDiceRoll.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$rightDiceRoll.png')),
          ),
        ],
      ),
    );
  }

  void changeDiceFace() {
    setState(() {
      leftDiceRoll = Random().nextInt(6) + 1;
      rightDiceRoll = Random().nextInt(6) + 1;
    });
  }
}
