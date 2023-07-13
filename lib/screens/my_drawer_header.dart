import 'package:flutter/material.dart';

class HeadOfSideMenu extends StatefulWidget {
  const HeadOfSideMenu({super.key});

  @override
  _MyHeadOfSideMenuState createState() => _MyHeadOfSideMenuState();
}

class _MyHeadOfSideMenuState extends State<HeadOfSideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      decoration: const ShapeDecoration(
        color: Color(0xFF2F3D4B),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: Color(0xFFD0B3A2)),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/ellipse-1-bg.png'),
              ),
            ),
          ),
          const Text(
            "Joe Doe",
            style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
          ),
          Text(
            "Développeur Flutter",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
