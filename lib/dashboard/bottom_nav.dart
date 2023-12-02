// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hogme_ui/authentication/login_screen.dart';
import 'package:hogme_ui/dashboard/account.dart';
import 'package:hogme_ui/dashboard/home.dart';
import 'package:hogme_ui/dashboard/livestock.dart';
import 'package:hogme_ui/dashboard/message.dart';
import 'package:hogme_ui/dashboard/schedule.dart';
import 'package:hogme_ui/dashboard/tutorial.dart';
import 'package:hogme_ui/utils/app_theme.dart';

class BottonNav extends StatefulWidget {
  const BottonNav({super.key});

  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  void signOut(BuildContext context) async {
    // Get the state of the authentication_service

    // Show a dialog with Yes and No options
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Sign Out'),
          content: const Text('Are you sure you want to sign out?'),
          actions: [
            TextButton(
              onPressed: () {
                // If the user clicks 'Yes', perform the sign-out
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
                // Close the dialog
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                // If the user clicks 'No', close the dialog without signing out
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const Tutorial(),
    const Schedule(),
    const Livestock(),
    const Message(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: AppTheme.primaryButtons,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back_outlined),
            label: 'Tutorial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/icon_hogme.png',
              height: 30,
              width: 30,
              color: Colors.white, // Replace with the path to your SVG file
            ),
            label: 'Livestock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
