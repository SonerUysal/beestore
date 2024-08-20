import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
           DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white54,
            ),
            child: Column(
              children: [
                Text(
                  'Soner UYSAL',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 85,
                  width: 85,
                  child: Card(
                    child: Image.asset("varliklar/ProfilPhoto1.jpg"),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Messages'),
            onTap: () {
              setState(() {
                selectedPage = 'Messages';
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              setState(() {
                selectedPage = 'Profile';
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              setState(() {
                selectedPage = 'Settings';
              });
            },
          ),
        ],
      ),
    );
  }
}
