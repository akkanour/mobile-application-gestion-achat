import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/chart.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2F3D4B),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 20,
                  padding: const EdgeInsets.all(10),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        decoration: ShapeDecoration(
                          color: const Color(0xFF555A71),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  'Demandes de prix',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.38,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '65',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.80,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '31 622 634,16',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        decoration: ShapeDecoration(
                          color: const Color(0xFF555A71),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  'Avenants',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.38,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '6',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.80,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '0,00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        decoration: ShapeDecoration(
                          color: const Color(0xFF555A71),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  'Appels d\'offres',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.38,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '24',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.80,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '1 000 038 010,00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        decoration: ShapeDecoration(
                          color: const Color(0xFF555A71),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  'Marchés',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.38,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '53',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.80,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '21 864 584 080,00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Barlow Semi Condensed',
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Color(0xFFD0B3A2),
                    child: Icon(
                      Icons.fact_check,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Bons de commande par projet',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Center(
                child: LineChartSample(),
              ),
            ],
          ),
        ));
  }
}
