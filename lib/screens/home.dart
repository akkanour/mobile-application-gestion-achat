import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/login.dart';
import 'package:gecimmo_application/screens/sidemenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F3D4B),
      drawer: const SideMenu(),
      appBar: AppBar(
        backgroundColor: const Color(0xFFD0B3A2),
        title: const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(4),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            hintText: 'Recherche par mots clés',
            hintStyle: TextStyle(
              color: Color(0xFFD0B3A2),
              fontSize: 14,
              fontFamily: 'Barlow Semi Condensed',
              fontWeight: FontWeight.w700,
            ),
            alignLabelWithHint: true,
            isDense: true,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: SizedBox.expand(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          decoration: BoxDecoration(color: Color(0xFF2F3D4B)),
          child: Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 25,
              padding: const EdgeInsets.all(15),
              children: [
                Container(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: const Color(0xFF555A71),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Column(
                          children: [
                            SizedBox(height: 25),
                            Text(
                              'Demandes de prix',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Barlow Semi Condensed',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.3,
                              ),
                            ),
                            SizedBox(height: 5),
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
                            SizedBox(height: 5),
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
                          bottom: 20,
                          right: 20,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 50,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLogin(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: const Color(0xFF555A71),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Column(
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
                          bottom: 20,
                          right: 20,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 60,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLogin(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: const Color(0xFF555A71),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Column(
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
                          bottom: 20,
                          right: 20,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 60,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLogin(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: const Color(0xFF555A71),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Column(
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
                          bottom: 20,
                          right: 20,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 60,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLogin(),
                              ),
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
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFFD0B3A2),
          selectedItemColor: const Color.fromARGB(
              255, 97, 92, 92), // Couleur de l'élément sélectionné
          unselectedItemColor: const Color.fromARGB(
              255, 255, 255, 255), // Couleur des éléments non sélectionnés
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_call),
              label: 'Numéro',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paid),
              label: 'Balance',
            ),
          ],
        ),
      ),
    );
  }
}
