import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('I Am Rich', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        // titleTextStyle: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Image.network(
          'https://commondatastorage.googleapis.com/codeskulptor-assets/lathrop/nebula_blue.s2014.png',
          // You can update this with your desired image URL
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            );
          },
          errorBuilder: (BuildContext context, url, error) =>
              const Text('Error loading image'),
        ),
      ),
    )),
  );
}
