import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
              height: 500,
              width: 500,
              //  child: Image.network('http://www.imagelink.jpeg')
              child: Image.asset(
                'lib/images/seabeach1.jpg',
                fit: BoxFit.fill,
              ),
            ),
        ),
      ),
    );
  }
}
