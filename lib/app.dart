import 'package:demo_provider/model/font.dart';
import 'package:demo_provider/screen/about_screen.dart';
import 'package:demo_provider/screen/home_screen.dart';
import 'package:demo_provider/screen/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Font()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/about': (context) => AboutScreen(),
          '/settting': (context) => SettingsScreen(),
        },
      ),
    );
  }
}
