import 'package:flutter/material.dart';
import 'package:porcupine_app/Screens/Appointment/appointment.dart';
import 'package:porcupine_app/Screens/Chat/chat.dart';
import 'package:porcupine_app/Screens/Login/login_screen.dart';
import 'package:porcupine_app/constants.dart';

import 'Screens/GetTested/get_tested.dart';

/// Flutter code sample for [BottomNavigationBar].
class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key, required this.firstTab});
  final Widget firstTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBarExample(firstTab: firstTab);
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key, required this.firstTab});
  final Widget firstTab;

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      widget.firstTab,
      ChatPage(),
      Appointment(),
    ];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 234, 232, 232),
          elevation: 0,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back,
                color: Color.fromRGBO(131, 116, 165, 1)),
            onPressed: () => Navigator.of(context).pop(),
          ), 
          actions: [
            IconButton(
              onPressed: () {},
              splashRadius: 25,
              icon: Icon(
                Icons.notifications,
                color: Color.fromRGBO(131, 116, 165, 1),
              ),
            ),
            IconButton(
              onPressed: () {},
              splashRadius: 25,
              icon: Icon(
                Icons.menu,
                color: Color.fromRGBO(131, 116, 165, 1),
              ),
            ),
          ]),
      body: Container(
        color: const Color.fromARGB(255, 234, 232, 232),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Container(
            color: Colors.white,
            child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        //add ClipRRect widget for Round Corner
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          child: BottomNavigationBar(
            //add background color
            backgroundColor: const Color.fromRGBO(228, 225, 235, 1),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital_outlined),
                label: 'Get tested',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Porcupine Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: 'My appointment',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color.fromRGBO(131, 116, 165, 1),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
