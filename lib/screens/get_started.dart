import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                child: SizedBox(
                  width: 1500,
                  height: 1001,
                  child: Image.asset('assets/images/imgBck.svg'),
                ),
              ),
              Positioned(
                left: 0,
                top: 402,
                child: Align(
                  child: SizedBox(
                    width: 667.9,
                    height: 677.29,
                    child: SizedBox(
                      width: 667.9,
                      height: 677.29,
                      child: SvgPicture.asset('assets/images/vector.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 696,
                child: Container(
                  width: 330,
                  height: 64,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD0B3A2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 96,
                top: 709,
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
                top: 538,
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
                top: 654,
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
          ),
        ),
      ],
      ),
    );
  }
}
