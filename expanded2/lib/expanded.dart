import 'package:flutter/material.dart';

class exPanded extends StatelessWidget {
  const exPanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.redAccent,
              ),
          ),
          
        ],
      ),
    );
  }
}