import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/screens/messages_screen.dart';
import 'package:health_care_app/screens/schedule_screen.dart';
import 'package:health_care_app/screens/settings_screen.dart';

import '../screens/home_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens =[
    // Home screen
    HomeScreen(),
    // Messages screen
    MessagesScreen(),
    // Schedule screen
    ScheduleScreen(),
    // Settings screen
    SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF8EB8E2),
          unselectedItemColor: Colors.black12,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
                label: "Home",
            ),BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Message",
            ),BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),
                label: "Schedule",
            ),BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
