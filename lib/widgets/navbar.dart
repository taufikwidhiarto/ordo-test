import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key, required this.currentIndex, this.onTap})
      : super(key: key);

  final int currentIndex;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    Color activeColor = Colors.black;
    Color inActiveColor = Colors.grey.shade400;
    return Container(
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu, color: inActiveColor),
              activeIcon: Icon(Icons.restaurant_menu, color: activeColor),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer, color: inActiveColor),
              activeIcon: Icon(Icons.local_offer, color: activeColor),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: inActiveColor),
              activeIcon: Icon(Icons.home, color: activeColor),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.event, color: inActiveColor),
              activeIcon: Icon(Icons.event, color: activeColor),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: inActiveColor),
              activeIcon: Icon(Icons.settings, color: activeColor),
              label: ''),
        ],
        currentIndex: currentIndex,
        onTap: onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
