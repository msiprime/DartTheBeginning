void main() {
  Car myCar = Car(drive: slowDrive);
  print(myCar.drive);
  myCar.drive = fastDrive;
  myCar.drive();
}

class Car {
  Function drive;

  Car({required this.drive});
}

void slowDrive() {
  print('Driving slowly');
}

void fastDrive() {
  print('Driving Blazing Fast');
}
/*
* import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[600],
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/diamond.png'),
                backgroundColor: Colors.teal[600],
              ),
              Text(
                'Tanjila Ayrin',
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 30, color: Colors.white),
              ),
              Text(
                'DOES NOTHING',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    letterSpacing: 2.5,
                    fontSize: 20,
                    color: Colors.teal[50]),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.add_shopping_cart),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/