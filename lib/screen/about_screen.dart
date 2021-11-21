import 'package:demo_provider/model/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'drawer_menu.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "Hello World 2";
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
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
