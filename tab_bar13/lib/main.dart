import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('T A B  B A R'),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(onPressed: () {
            
          }, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {
              
            }, icon: Icon(Icons.person)),
            IconButton(onPressed: (){

            }, icon: Icon(Icons.share)),
          ],
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
