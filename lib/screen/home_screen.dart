import 'package:demo_provider/model/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  String text = "Hello World";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home"),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Consumer<Font>(
          builder: (context, font, child) {
            return RichText(
              text: TextSpan(
                text: text,
                style: TextStyle(fontSize: font.fontSize, color: Colors.black),
              ),
            );
          },
        ),
      ),
    );
  }
}
