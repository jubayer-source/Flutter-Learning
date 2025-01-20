import 'package:flutter/material.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Text(
          "Page 3",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
