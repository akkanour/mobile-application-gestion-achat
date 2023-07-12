import 'package:flutter/material.dart';

class ScreenFix extends StatelessWidget {
  const ScreenFix({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 723,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/imgBck.png'),
                fit: BoxFit.fill),
          ),
        ),
        Positioned(
          top: 457,
          child: Align(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.white12.withOpacity(0.5),
                  ],
                ),
              ),
              child: SizedBox(
                width: 667.9,
                height: 677.29,
                child: SizedBox(
                  width: 667.9,
                  height: 677.29,
                  child: Image.asset('assets/images/vector.png'),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 50,
          right: 50,
          top: 615,
          child: Container(
            height: 60,
            decoration: ShapeDecoration(
              color: const Color(0xFFD0B3A2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
            ),
          ),
        ),
        const Positioned(
          left: 96,
          top: 630,
          child: SizedBox(
            width: 182,
            height: 38,
            child: Text(
              'GET STARTED',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontFamily: 'Barlow Semi Condensed',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.63,
              ),
            ),
          ),
        ),
        const Positioned(
          left: 22,
          top: 450,
          child: SizedBox(
            width: 258,
            height: 100,
            child: Text(
              'LOGICIEL DE GESTION \nDES ACHATS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Barlow Semi Condensed',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        const Positioned(
          left: 26,
          right: 26,
          top: 570,
          child: SizedBox(
            width: 338,
            height: 32,
            child: Text(
              'FRAIS GÉNÉRAUX, PRESTATIONS DIVERSES ET MATIÈRES PREMIÈRES ADAPTÉE À VOS BESOINS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Barlow Semi Condensed',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
