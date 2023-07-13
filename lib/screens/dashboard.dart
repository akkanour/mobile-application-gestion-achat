import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 813,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0xFF2F3D4B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: -1,
                child: Container(
                  width: 375,
                  height: 93,
                  decoration: const BoxDecoration(color: Color(0xFFD0B3A2)),
                ),
              ),
              Positioned(
                left: 284,
                top: 40,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 328,
                top: 40,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 129,
                child: SizedBox(
                  width: 168,
                  height: 137,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 10,
                        top: 29,
                        child: Text(
                          'Demandes de prix',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.38,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 67,
                        child: Text(
                          '65',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 106,
                        child: Text(
                          '31 622 634,16',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 86,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 168,
                          height: 137,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF555A71),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 29,
                        child: Text(
                          'Demandes de prix',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.38,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 67,
                        child: Text(
                          '65',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 106,
                        child: Text(
                          '31 622 634,16',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 86,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 192,
                top: 129,
                child: SizedBox(
                  width: 168,
                  height: 137,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 10,
                        top: 29,
                        child: Text(
                          'Demandes de prix',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.38,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 67,
                        child: Text(
                          '65',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 106,
                        child: Text(
                          '31 622 634,16',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 86,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 168,
                          height: 137,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF555A71),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 29,
                        child: Text(
                          'Avenants',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.38,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 67,
                        child: Text(
                          '6',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 106,
                        child: Text(
                          '00,00\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 86,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 286,
                child: SizedBox(
                  width: 168,
                  height: 137,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 10,
                        top: 29,
                        child: Text(
                          'Demandes de prix',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.38,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 67,
                        child: Text(
                          '65',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 106,
                        child: Text(
                          '31 622 634,16',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 86,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 168,
                          height: 137,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF555A71),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 29,
                        child: Text(
                          'Appels d offres',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.38,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 67,
                        child: Text(
                          '24\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 106,
                        child: Text(
                          '1 000 038 010,00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 86,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 76,
                top: 466,
                child: Text(
                  'Bons de commande par projet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontFamily: 'Barlow Semi Condensed',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 192,
                top: 286,
                child: SizedBox(
                  width: 168,
                  height: 137,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 10,
                        top: 29,
                        child: Text(
                          'Demandes de prix',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.38,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 67,
                        child: Text(
                          '65',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 106,
                        child: Text(
                          '31 622 634,16',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 86,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 168,
                          height: 137,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF555A71),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 29,
                        child: Text(
                          'Marchés',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.38,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 67,
                        child: Text(
                          '53',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 10,
                        top: 106,
                        child: Text(
                          '21 864 584 080,00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 86,
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 509,
                child: Container(
                  width: 340,
                  height: 207.90,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/340x208"),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 36,
                top: 640,
                child: Text(
                  '30\n',
                  style: TextStyle(
                    color: Color(0xFF5C5252),
                    fontSize: 10,
                    fontFamily: 'Barlow Semi Condensed',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
              const Positioned(
                left: 36,
                top: 603,
                child: Text(
                  '60\n',
                  style: TextStyle(
                    color: Color(0xFF5C5252),
                    fontSize: 10,
                    fontFamily: 'Barlow Semi Condensed',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
              const Positioned(
                left: 36,
                top: 565,
                child: Text(
                  '90\n',
                  style: TextStyle(
                    color: Color(0xFF5C5252),
                    fontSize: 10,
                    fontFamily: 'Barlow Semi Condensed',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.20,
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 726,
                child: SizedBox(
                  width: 340,
                  height: 314,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(width: 340, height: 276),
                      ),
                      Positioned(
                        left: 60,
                        top: 94,
                        child: SizedBox(
                          width: 220,
                          height: 220,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 220,
                                top: 220,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                  child: Container(
                                    width: 220,
                                    height: 220,
                                    decoration: const ShapeDecoration(
                                      shape: OvalBorder(
                                        side: BorderSide(
                                          width: 9.50,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                          color: Color(0xFFD0B3A2),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 220,
                                top: 220,
                                child: Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                  child: Container(
                                    width: 220,
                                    height: 220,
                                    decoration: const ShapeDecoration(
                                      shape: OvalBorder(
                                        side: BorderSide(
                                          width: 9.50,
                                          strokeAlign: BorderSide.strokeAlignCenter,
                                          color: Color(0x992F3D4B),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 138,
                        top: 153,
                        child: Text(
                          'Traitée',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 143,
                        top: 188,
                        child: Text(
                          '123',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.80,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 65,
                        top: 34,
                        child: Text(
                          'Bons de commande par projet',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4,
                        top: 13,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFD0B3A2),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 441,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD0B3A2),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 84,
                top: 40,
                child: Container(
                  width: 184,
                  height: 32,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 184,
                        height: 32,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 27,
                              top: 16,
                              child: SizedBox(
                                width: 129.40,
                                child: Text(
                                  'Recherche par mot clé',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFD0B3A2),
                                    fontSize: 14,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 741,
                child: SizedBox(
                  width: 375,
                  height: 72,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 72,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD0B3A2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 53,
                        top: 18,
                        child: Container(
                          width: 268.66,
                          height: 40,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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