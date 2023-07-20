import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gecimmo_application/data.dart';
import 'package:gecimmo_application/screens/home.dart';
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

  List<Info> infos = List.of(Data.infos);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F3D4B),
      drawer: const SideMenu(),
      appBar: AppBar(
        shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            null,
            0),
        backgroundColor: const Color(0xFF2F3D4B),
        centerTitle: true,
        title:
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Validation Workflow',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Barlow Semi Condensed',
                fontWeight: FontWeight.w700),
          ),
        ]),
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
          Expanded(
            child: SizedBox(
              width: 380,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: infos.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(
                    key: ValueKey(index),
                    startActionPane: ActionPane(
                      motion: const BehindMotion(),
                      children: [
                        SlidableAction(
                          label: "VALIDER",
                          foregroundColor: Colors.white,
                          icon: Icons.check,
                          backgroundColor: const Color(0xFF05FF00),
                          onPressed: (context) => {},
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      motion: const BehindMotion(),
                      children: [
                        SlidableAction(
                          label: "DELETE",
                          icon: Icons.delete_outline,
                          backgroundColor: const Color(0xFFFF0000),
                          onPressed: (context) => {},
                        ),
                      ],
                    ),
                    child: listTile(index),
                  );
                },
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFFD0B3A2),
          selectedItemColor: const Color.fromARGB(66, 52, 49, 49), // Couleur de l'élément sélectionné
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

  Widget listTile(int index) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text('Numéro :'
            " ${infos[index].numero!}\nMontant :${infos[index].montant!}\nRésponsable Sur La Validation :${infos[index].respo!}"),
      ),
    );
  }
}
