import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 253,
          height: 812,
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
                top: -5,
                child: Container(
                  width: 253,
                  height: 198,
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
                ),
              ),
              Positioned(
                left: 21,
                top: 43,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/ellipse-1-bg.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: 15,
                top: 152,
                child: Text(
                  'Salima LEYLA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Barlow Semi Condensed',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Positioned(
                left: 15,
                top: 172,
                child: SizedBox(
                  width: 163,
                  child: Text(
                    'Administration\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Barlow Semi Condensed',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 202,
                top: 50,
                child: SizedBox(
                  width: 38,
                  height: 34,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 38,
                          height: 34,

                          decoration: ShapeDecoration(
                            image:  const DecorationImage(
                              image: AssetImage('assets/images/cancel.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 7,
                top: 726,
                child: Container(
                  width: 240,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white.withOpacity(0.49000000953674316),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 740,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
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
                                      decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 60),
                      SizedBox(
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
                                decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 60),
                      SizedBox(
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
                                decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
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
                left: 15,
                top: 225,
                child: SizedBox(
                  width: 256,
                  height: 39,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 256,
                          height: 39,
                          decoration: const BoxDecoration(color: Color(0xFF2F3D4B)),
                        ),
                      ),
                      const Positioned(
                        left: 35,
                        top: 20,
                        child: Text(
                          'Tableau de bord',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 278,
                child: SizedBox(
                  width: 256,
                  height: 39,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 256,
                          height: 39,
                          decoration: const BoxDecoration(color: Color(0xFF2F3D4B)),
                        ),
                      ),
                      const Positioned(
                        left: 35,
                        top: 20,
                        child: Text(
                          'Demande d’achat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.40,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 8,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 331,
                child: SizedBox(
                  width: 256,
                  height: 39,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 256,
                          height: 39,
                          decoration: const BoxDecoration(color: Color(0xFF2F3D4B)),
                        ),
                      ),
                      const Positioned(
                        left: 35,
                        top: 20,
                        child: Text(
                          'Validation workflow',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Barlow Semi Condensed',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 344,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 384,
                child: SizedBox(
                  width: 256,
                  height: 39,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 256,
                          height: 39,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 256,
                                  height: 39,
                                  decoration: const BoxDecoration(color: Color(0xFF2F3D4B)),
                                ),
                              ),
                              const Positioned(
                                left: 35,
                                top: 20,
                                child: Text(
                                  'Appel d’offre',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.40,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 8,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -1,
                        top: 8,
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
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
                top: 437,
                child: SizedBox(
                  width: 256,
                  height: 39,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 256,
                          height: 39,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 256,
                                  height: 39,
                                  decoration: const BoxDecoration(color: Color(0xFF2F3D4B)),
                                ),
                              ),
                              const Positioned(
                                left: 35,
                                top: 20,
                                child: Text(
                                  'Terrain',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.60,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 8,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -1,
                        top: 8,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 490,
                child: SizedBox(
                  width: 256,
                  height: 39,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 256,
                          height: 39,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 256,
                                  height: 39,
                                  decoration: const BoxDecoration(color: Color(0xFF2F3D4B)),
                                ),
                              ),
                              const Positioned(
                                left: 35,
                                top: 20,
                                child: Text(
                                  'Marchés',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.40,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 8,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -1,
                        top: 8,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 445,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
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
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 498,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 233,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(color: Color(0xFFD9D9D9)),
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