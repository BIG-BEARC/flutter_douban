import 'package:flutter/material.dart';

class DBBottomBarItem extends BottomNavigationBarItem {
  DBBottomBarItem(String iconName, String title)
      : super(
            icon: Image.asset(
              'assets/images/tabbar/$iconName.png',
              width: 32,
              gaplessPlayback: true,
            ),
            activeIcon: Image.asset(
              'assets/images/tabbar/${iconName}_active.png',
              width: 32,
              gaplessPlayback: true,
            ),
            title: Text(title));
}
