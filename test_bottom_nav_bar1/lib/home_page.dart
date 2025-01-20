import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectIndex = 0;
  
  void _navigationBottomBar(int index){
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
      Center(
        child: Text(
          'H Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
      Center(
        child: Text(
          'Hoe Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
      Center(
        child: Text(
          'ome Page',
          style: TextStyle(fontSize: 40),
        ),
      ),

  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: 
      
      BottomNavigationBar(
        onTap: _navigationBottomBar,
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      ]),
    );
  }
}
