import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  //const MyCircle({super.key});

  final String child;
  const MyCircle({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink,
        ),
        child: Center(
          child: Text(
            child,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
