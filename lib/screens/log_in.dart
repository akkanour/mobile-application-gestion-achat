import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1500,
          height: 1001,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Stack(
            children: [
            Positioned(
            child: Container(
              width: 1500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/imgBck.svg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 69,
            top: 120,
            child: Container(
              width: 47,
              height: 59,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 128,
            top: 129,
            child: SizedBox(
              width: 157,
              height: 41,
              child: Text(
                'G-TREND',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 259,
            child: Container(
              width: 335,
              height: 288,
              decoration: ShapeDecoration(
                color: const Color(0xFF2F3D4B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 39,
            top: 406,
            child: Text(
              'Mot de passe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Barlow Semi Condensed',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.44,
              ),
            ),
          ),
          Positioned(
            left: 39,
            top: 439,
            child: Container(
              width: 291,
              height: 55,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 566,
            child: Container(
              width: 335,
              height: 55,
              decoration: ShapeDecoration(
                color: const Color(0xFFD0B3A2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 566,
            child: Container(
              width: 335,
              height: 55,
              decoration: ShapeDecoration(
                color: const Color(0xFFD0B3A2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 39,
            top: 289,
            child: SizedBox(
              width: 182,
              height: 34,
              child: Text(
                'Nom d\' utilisateur',
              style: TextStyle(
              color: Colors.white,
                fontSize: 22,
                fontFamily: 'Barlow Semi Condensed',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          left: 39,
          top: 329,
          child: Container(
            width: 291,
            height: 55,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const Positioned(
          left: 103,
          top: 574,
          child: Text(
            'CONTINUE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Barlow Semi Condensed',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.64,
            ),
          ),
        ),
      ],
    ),
    ),
    ],
    );
  }
}