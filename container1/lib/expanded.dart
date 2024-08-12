import 'package:flutter/material.dart';

class Expanded extends StatelessWidget {
  const Expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}