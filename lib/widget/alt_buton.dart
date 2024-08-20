import 'package:flutter/material.dart';

class AltButonWidget extends StatefulWidget {
  const AltButonWidget({Key? key}) : super(key: key);

  @override
  State<AltButonWidget> createState() => _AltButonState();
}

class _AltButonState extends State<AltButonWidget> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      backgroundColor: Colors.white70,
      indicatorColor: Colors.white,
      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(
          child: Icon(Icons.category)),
          label: 'Categories',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.access_time),
          ),
          label: 'Orders',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('3'),
            child: Icon(Icons.account_box),
          ),
          label: 'Profile',
        ),
      ],
    );
    ;
  }
}
