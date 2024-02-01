import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: ,
              children: <Widget>[
                Text('01'),
                Text('02'),
                Text('03'),
                Text('04'),
                Text('05'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button Text'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: ,
              children: <Widget>[
                Text('06'),
                Text('07'),
                Text('08'),
                Text('09'),
                Text('10'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button Text'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: ,
              children: <Widget>[
                Text('11'),
                Text('12'),
                Text('13'),
                Text('14'),
                Text('15'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Button Text'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
