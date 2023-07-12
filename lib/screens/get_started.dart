import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/log_in.dart';

class ScreenFix extends StatelessWidget {
  const ScreenFix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/imgBck.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Color(0xFF111122)],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 24),
                  const Text(
                    'LOGICIEL DE GESTION \nDES ACHATS',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(flex: 1),
                  Text(
                    'FRAIS GÉNÉRAUX, PRESTATIONS DIVERSES ET MATIÈRES PREMIÈRES ADAPTÉE À VOS BESOINS',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const Spacer(flex: 2),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogIn(),
                        ),
                      );
                    },
                    
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      minimumSize: const Size(double.infinity, 48),
                      backgroundColor: const Color(0xFFD0B3A2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                        side: BorderSide.none,
                      ),
                    ),
                    child: const Text("Get Started"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
