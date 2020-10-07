import 'package:flutter/material.dart';

class NavigationBarAll extends StatefulWidget {
  final int _currentIndex;
  NavigationBarAll(this._currentIndex);
  @override
  _NavigationBarAllState createState() => _NavigationBarAllState();
}

class _NavigationBarAllState extends State<NavigationBarAll> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = widget._currentIndex;

    void onTabTapped(index) {
      switch (index) {
        case 0:
          {
            Navigator.popAndPushNamed(context, "/home");
            Navigator.popUntil(context, (route) => route.isFirst);
          }
          break;
        case 1:
          {
            Navigator.pushNamed(context, "/profile");
          }
          break;
        case 2:
          {
            Navigator.pushNamed(context, "/notif");
          }
          break;
        case 3:
          {
            Navigator.pushNamed(context, "/chat");
          }
          break;
      }
    }

    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          label: "Offres",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profil",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notifications",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: "Chat",
        ),
      ],
    );
  }
}
