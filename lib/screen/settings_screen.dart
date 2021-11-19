import 'package:demo_provider/model/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'drawer_menu.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Settings'),
      ),
      drawer: DrawerMenu(),
      body: Consumer<Font>(builder: (context, font, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Font Size: ${font.fontSize.toInt()}',
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline5!.fontSize),
              ),
            ),
            Slider(
                min: 0.5,
                value: font.sliderFontSize,
                onChanged: (newValue) {
                  font.fontSize = newValue;
                }),
          ],
        );
      }),
    );
  }
}
