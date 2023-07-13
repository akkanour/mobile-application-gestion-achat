import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F3D4B),
        body: SafeArea(
  child: GridView.count(
    crossAxisCount: 2, // 2 conteneurs par ligne
    crossAxisSpacing: 10, // Espace horizontal entre les conteneurs
    mainAxisSpacing: 10, // Espace vertical entre les conteneurs
    padding: const EdgeInsets.all(10), // Espace autour de la grille
    children: [
      Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF555A71),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF555A71),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF555A71),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF555A71),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  ),
)
);
  }
}
