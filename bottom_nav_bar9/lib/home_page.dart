import 'package:bottom_nav_bar/pages/account.dart';
import 'package:bottom_nav_bar/pages/home.dart';
import 'package:bottom_nav_bar/pages/message.dart';
import 'package:bottom_nav_bar/pages/setting.dart';
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

  final List<Widget> _pages = [

    const UserHome(),
    const UserMassage(),
    const UserSetting(),
    const UserAccount(),

    // Center(
    //   child: Text(
    //     'Home',
    //     style: TextStyle(fontSize: 50),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'Message',
    //     style: TextStyle(fontSize: 50),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'Account',
    //     style: TextStyle(fontSize: 50),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'Setting',
    //     style: TextStyle(fontSize: 50),
    //   ),
    // ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Center(
          child: Text("Hello"),
        )
      ),
      body: _pages[_selectIndex],
      // Center(
      //   child: Text(
      //     'Home',
      //     style: TextStyle(fontSize: 50),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        currentIndex:
            _selectIndex, // for changing Home to Message, Account etc... 0 for home, 1 for Message, 2 for acount
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
