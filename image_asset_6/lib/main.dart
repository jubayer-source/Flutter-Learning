import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Homepage(); // Make sure to add "const" if Homepage is constant
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 250,
          child: Image.asset('lib/images/screenshot.jpg'), // Ensure the image path is correct
        ),
      ),
    );
  }
}
