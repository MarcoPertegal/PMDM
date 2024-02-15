import 'package:flutter/material.dart';
import 'package:marps_frontend/page/curiosity_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    CuriosityPage(),
    Text(
      'Opportunity',
      style: optionStyle,
    ),
    Text(
      'Spirit',
      style: optionStyle,
    ),
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
            icon: Icon(Icons.rocket),
            label: 'Curiosity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Opportunity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Spirit',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
