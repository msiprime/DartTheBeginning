import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0, // You can adjust the elevation as needed
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Adjust the circular border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Use ClipOval to create a circular shape for the profile picture
            ClipOval(
              child: Container(
                width: 80.0, // Adjust the size of the circular profile picture
                height: 80.0,
                color: Colors.blue, // You can replace this with an Image widget
                child: const Center(
                  child: Text(
                    'A', // You can replace this with an Image widget or a network image
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'John Doe', // Replace with the actual name
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'john.doe@example.com', // Replace with the actual email
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}