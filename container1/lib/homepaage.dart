import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(

        // Container Widget
        
        child: Container(
          /*      
          alignment: Alignment(0, 0),
          height: 200,
          width: 200,
          decoration: BoxDecoration(

          // borderRadius: BorderRadius.circular(20),

          // color: Colors.deepOrange,
          // shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('Hello',
          style: TextStyle(
            fontSize: 30,
          ),
          ),
          */
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        //  borderRadius: BorderRadius.circular(15),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        ),
      ),
    );
  }
}