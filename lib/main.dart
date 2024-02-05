import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const MyApp(),
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          centerTitle: true,
          title: const Text('Ask Me Anything'),
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  randomBall = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$randomBall.png'),
            ),
            TextButton(
              onPressed: () {
                // Use AudioCache to play audio files
                final player = AudioPlayer();
                player.audioCache;
                player.play('note1.wav' as Source);

              },
              child: Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
