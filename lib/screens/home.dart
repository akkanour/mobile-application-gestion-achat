import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/get_started.dart';
import 'package:gecimmo_application/screens/login.dart';
import 'package:gecimmo_application/screens/sidemenu.dart';
import 'package:gecimmo_application/screens/validation.dart';

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
      body: Scaffold(
        backgroundColor: Color(0xFF2F3D4B),
        body: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF555A71),
                      ),
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: MediaQuery.of(context).size.width / 2.6,
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF555A71),
                      ),
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: MediaQuery.of(context).size.width / 2.6,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF555A71),
                      ),
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: MediaQuery.of(context).size.width / 2.6,
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF555A71),
                      ),
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: MediaQuery.of(context).size.width / 2.6,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFD0B3A2),
                  radius: 28,
                  child: Icon(Icons.fact_check_outlined,
                      color: Colors.white, size: 30),
                ),
                Text(
                  "Bons de commande par projet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Barlow Semi Condensed',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFFD0B3A2),
          selectedItemColor:
              Color.fromARGB(66, 52, 49, 49), // Set selected icon color to blue
          unselectedItemColor:
              Colors.white, // Set unselected icons color to white
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
          onTap: (int index) {
            // Handle navigation here
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            } else if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Validation()),
              );
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Validation()),
              );
            }
          },
        ),
      ),
    );
  }
}
