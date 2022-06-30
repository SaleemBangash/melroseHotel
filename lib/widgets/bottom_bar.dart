// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/pages/Profile.dart';
import 'package:login/pages/QuickServices.dart';
import 'package:login/pages/StaffHelp.dart';

import '../main.dart';
import '../pages/Dashboard.dart';

class BottomBar extends StatefulWidget {
  // final Widget body;
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  // int index = 0;
  // late final Widget? body;
  int _selectedIndex = 0;
  final List<Widget> screens = [
    Dashboard(),
    QuickServices(),
    StaffHelp(),
    Profile(),

    //Center(child: Text("Settings")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: widget.body,
      body: Center(
        child: screens[_selectedIndex], //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        // key: globalKey,
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        backgroundColor: const Color(0xffA67B5B),
        unselectedItemColor: Colors.black,

        selectedItemColor: Colors.black,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        // selectedLabelStyle:
        //     TextStyle(fontWeight: FontWeight.bold, fontSize: 0.0),
        selectedFontSize: 0.0,
        unselectedFontSize: 10.0,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(size: 23),
        unselectedIconTheme: const IconThemeData(size: 21),
        showUnselectedLabels: true,

        // selectedItemColor: Theme.of(context).primaryColor,
        // selectedLabelStyle: Colors.accents,
        // unselectedLabelStyle: textTheme.caption,
        // onTap: _onItemTapped,
        // currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 22,
            ),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.room_service_outlined,
                color: Colors.black,
              ),
              label: ('Service'),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.black,
            ),
            label: ('Message'),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: ('Profile'),
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.black,
        // selectedFontSize: 20,

        onTap: _onItemTapped,
      ),
    );
  }
}
