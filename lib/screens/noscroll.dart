import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //...,
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true, // This is important ⬇️️

          ),
        ],
      ),
    );
  }
}