import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberofTimeTapped = 0;

  // void tapped(int index){
  //   setState(() {
  //     numberofTimeTapped = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text('Tapped ' + numberofTimeTapped.toString() + ' times', style: TextStyle(fontSize: 25),),
            Text(
              'Tapped $numberofTimeTapped times',
              style: const TextStyle(fontSize: 25),
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  numberofTimeTapped++;
                });
              },
              child: Container(
                child: const Text(
                  'Tab More',
                  style: TextStyle(fontSize: 25),
                ),
                color: Colors.green,
                padding: const EdgeInsets.all(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
