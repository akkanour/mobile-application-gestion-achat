import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/get_started.dart';
import 'package:gecimmo_application/screens/noscroll.dart';
//import 'package:gecimmo_application/screens/get_started.dart';
//import 'package:gecimmo_application/screens/get_started.dart';
//import 'package:gecimmo_application/screens/log_in.dart';
import 'package:gecimmo_application/screens/screen_fix.dart';
//import 'package:gecimmo_application/screens/side_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(children:[
          MyHomePage(),
        ]),
      ),
    );
  }
}
