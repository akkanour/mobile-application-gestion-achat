import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/sidemenu.dart';

// ignore: must_be_immutable
class Validation extends StatelessWidget {
  Validation({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  void performSearch(String searchText) {
    // Logique de recherche
    if (kDebugMode) {
      print('Recherche : $searchText');
    }
  }

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
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Glisser vers la gauche pour validé  le Workflow \nou vers le droit pour refusé ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Barlow Semi Condensed',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.calendar_today),
                hintText: 'Recherche par mots clés',
                hintStyle: TextStyle(
                  color: Color(0xFF2F3D4B),
                  fontSize: 14,
                  fontFamily: 'Barlow Semi Condensed',
                  fontWeight: FontWeight.w700,
                ),
                alignLabelWithHint: true,
                isDense: true,
              ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.all(0),
             child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(items[index]),
                  );
                    },
              )
          )*/
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),

              //shrinkWrap: true,
              //itemCount: 2,
              //itemBuilder: (BuildContext context, int index) =>
              child: const ListTile(
                title: Text('Numéro :FA-111\nMontant : 10000,00\nRésponsable Sur La Validation: Yassine'),
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),

              //shrinkWrap: true,
              //itemCount: 2,
              //itemBuilder: (BuildContext context, int index) =>
              child: const ListTile(
                title: Text('Numéro :FA-111\nMontant : 10000,00\nRésponsable Sur La Validation: Yassine'),
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),

              
              child: const ListTile(
                title: Text('Numéro :FA-111\nMontant : 10000,00\nRésponsable Sur La Validation: Yassine'),
                
              ),
            ),
          ),
        ],
      ),
      

      //),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFFD0B3A2),
          selectedItemColor: const Color.fromARGB(
              255, 255, 255, 255), // Couleur de l'élément sélectionné
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