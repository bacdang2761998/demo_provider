import 'package:demo_provider/screen/about_screen.dart';
import 'package:demo_provider/screen/home_screen.dart';
import 'package:demo_provider/screen/settings_screen.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                "Demo Provider",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline6!.fontSize,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
          ),
          ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
          getLine(),
          ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));
              }),
          getLine(),
          ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              }),
        ],
      ),
    );
  }

  Widget getLine() {
    return SizedBox(
      height: 0.5,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  // Widget getListTile(title, {required Function onTap}) {
  //   return ListTile(
  //     title: Text(title),
  //     onTap: onTap,
  //   );
  // }
}
