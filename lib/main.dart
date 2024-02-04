import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        body: const MyApp(),
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          centerTitle: true,
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Source Sans Pro',
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomBall = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Center(
        child: TextButton(
            onPressed: () {
              setState(() {
                randomBall = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$randomBall.png')),
      ),
    );
  }
}
