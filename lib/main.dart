import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/dash_fix.dart';
import 'package:gecimmo_application/screens/get_started.dart';
//import 'package:gecimmo_application/screens/dashboard.dart';
//import 'package:gecimmo_application/screens/get_started.dart';
//import 'package:gecimmo_application/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
