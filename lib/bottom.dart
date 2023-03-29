import 'package:flutter/material.dart';
import 'package:plant/add.dart';
import 'package:plant/alarm.dart';
import 'package:plant/dashboard.dart';
import 'package:plant/setting.dart';

class icon extends StatefulWidget {
  const icon({super.key});

  @override
  State<icon> createState() => _iconState();
}

class _iconState extends State<icon> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    dashboard(),
    Home(),
    alarm(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('Home'),
              backgroundColor: Color.fromARGB(255, 101, 208, 185),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box),
                label: ('Add'),
                backgroundColor: Color.fromARGB(212, 83, 224, 111)
                ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: ('Alarm'),
              backgroundColor: Color.fromARGB(175, 72, 199, 203),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
