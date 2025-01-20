import 'package:flutter/material.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Text(
          "Page 2",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
