import 'package:flutter/material.dart';

import 'pages/Main.dart';
import 'pages/Doctors.dart';
import 'pages/Chats.dart';
import 'pages/Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndx = 0;

  final List<Widget> _options = <Widget>[Main(), Doctors(), Chats(), Profile()];

  void _onItemTapped(int indx) {
    setState(() {
      _selectedIndx = indx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 40,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("All Doctors", style: TextStyle(color: Colors.green)),
        ),
        body: _options.elementAt(_selectedIndx),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Main',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital_outlined),
              label: 'Doctors',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp),
              label: 'Profile',
            ),
          ],
          showUnselectedLabels: true,
          currentIndex: _selectedIndx,
          selectedItemColor: Colors.grey[600],
          unselectedItemColor: Colors.grey[400],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
