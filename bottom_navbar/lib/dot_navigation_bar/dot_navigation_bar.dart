import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class DotBottomNav extends StatefulWidget {
  @override
  _DotBottomNavState createState() => _DotBottomNavState();
}

class _DotBottomNavState extends State<DotBottomNav> {
  var _selectedTab = _SelectedTab.DotBottomNav;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        child: SizedBox(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 0),
        child: DotNavigationBar(
          itemPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          backgroundColor: const Color.fromARGB(109, 187, 53, 20),
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: const Color.fromARGB(255, 208, 42, 0),
          unselectedItemColor: const Color.fromARGB(148, 0, 0, 0),
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// DotBottomNav
            DotNavigationBarItem(
              icon: const Icon(Icons.do_not_step),
              selectedColor: const Color.fromARGB(255, 208, 42, 0),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.favorite),
              selectedColor: const Color.fromARGB(255, 208, 42, 0),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.search),
              selectedColor: const Color.fromARGB(255, 208, 42, 0),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: const Color.fromARGB(255, 208, 42, 0),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { DotBottomNav, favorite, search, person }
