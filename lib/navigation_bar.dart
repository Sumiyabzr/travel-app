import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:visitulaanbaatar/screens/Commercial/home_screen.dart';
import 'package:visitulaanbaatar/screens/Info/main.dart';
import 'package:visitulaanbaatar/screens/Travel_Destinations/travel_screen.dart';
import 'package:visitulaanbaatar/screens/Ulaanbaatar/main.dart';
import 'package:visitulaanbaatar/screens/new_home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Container(
      child: NewHomeScreen(),
    ),
    Container(
      child: UlaanbaatarN(),
    ),
    Container(
      child: TravelScreen(),
    ),
    Container(
      child: InfoN(),
    ),
    Container(
      child: Commercial_screen(),
    ),
  ];

  // List<Widget> _totalPage = [
  //   NewHomeScreen(),
  //   Ulaanbaatar_Screen(),
  //   Destinations(),
  //   Info(),
  //   Commercial_screen()
  // ];

  void _setCurrentIndex(int val) {
    setState(() {
      _currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_currentIndex),
        ),
        // _totalPage[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                color: Colors.black,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
              curve: Curves.decelerate,
              backgroundColor: Colors.white,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.blueAccent.withOpacity(0.8),
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  iconSize: 20,
                  text: 'Explore',
                  textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GButton(
                  icon: Icons.flag_outlined,
                  iconSize: 20,
                  text: 'Visit UB',
                  textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GButton(
                  icon: Icons.location_on_outlined,
                  iconSize: 20,
                  text: 'Destinations',
                  textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GButton(
                  icon: Icons.newspaper_rounded,
                  iconSize: 20,
                  text: 'Info',
                  textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                GButton(
                  icon: Icons.shopping_bag_outlined,
                  iconSize: 20,
                  text: 'Commercial',
                  textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
          ),
        )

        // BottomNavigationBar(
        //   currentIndex: _currentIndex,
        //   onTap: _setCurrentIndex,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.home_outlined,
        //         ),
        //         label: "Explore"),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.flag,
        //         ),
        //         label: "Visit UB"),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.location_on_rounded,
        //         ),
        //         label: "Destinations"),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.newspaper_rounded,
        //         ),
        //         label: "Info"),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           Icons.shopping_bag_rounded,
        //         ),
        //         label: "Commercial")
        //   ],
        // ),
        );
  }
}
