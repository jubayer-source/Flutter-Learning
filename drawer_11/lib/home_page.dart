import 'package:drawer_11/pages/first_page.dart';
import 'package:drawer_11/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
        title: const Text(
          'A P P B A R',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // actions: [
        //   IconButton(onPressed: () {

        //   }, icon: Icon(Icons.share)),
        //   IconButton(onPressed: () {

        //   }, icon: Icon(Icons.person)),
        // ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green[200],
          child: ListView(
            children: [
              //  DrawerHeader(child: Icon(Icons.home, size: 35,))
              const DrawerHeader(
                  child: Center(
                      child: Text(
                'L O G O',
                style: TextStyle(fontSize: 35),
              ))),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  '1st Page',
                  style: TextStyle(fontSize: 28),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  '2nd Page',
                  style: TextStyle(fontSize: 28),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          ]),
    );
  }
}
