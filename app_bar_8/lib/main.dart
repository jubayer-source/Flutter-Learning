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
      
      /// for entire page app bar color will be green
      theme: ThemeData(primarySwatch: Colors.green),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('M Y A P P B A R'),
       // backgroundColor: Color(Colors.green),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              // do something like open menu
            },
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // share by pressing this button
              },
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {
                // profile
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My AppBar'),
//           centerTitle: true, // Centers the title in the AppBar
//         ),
//         body: Center(
//           child: Text('Hello, World!'),
//         ),
//       ),
//     );
//   }
// }
