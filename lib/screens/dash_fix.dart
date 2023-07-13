
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/sidemenu.dart';

// ignore: must_be_immutable
class DashboardFix extends StatelessWidget {
  DashboardFix({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  void performSearch(String searchText) {
    // Logique de recherche
    if (kDebugMode) {
      print('Recherche : $searchText');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          
          backgroundColor: const Color(0xFFD0B3A2),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(performSearch),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {},        
            ),
          ],
        ),
        body: Column(
  children: [
    const Text(
      "Demandes de prix",
      style: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w400,
      ),
    ),
    const Text(
      "65",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w700,
      ),
    ),
    const Text(
      "31 622 634,16",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
    ),
    Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: Color(0xffcccccc),
          ),
        ),
        const SizedBox(
          width: 26.66666603088379,
          height: 26.66666603088379,
        ),
        Container(
          width: 168,
          height: 137,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff555a71),
          ),
          child: Column(
            children: [
              const Text(
                "Marchés",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "53",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "21 864 584 080,00",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: Color(0xffcccccc),
          ),
        ),
        const SizedBox(
          width: 26.66666603088379,
          height: 26.66666603088379,
        ),
        // Ajoutez ici les informations textuelles pour le deuxième conteneur si nécessaire
      ],
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
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  final Function(String) onSearch;

  CustomSearchDelegate(this.onSearch);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    onSearch(query);
    // Afficher les résultats de la recherche
    return Center(
      child: Text('Résultats de la recherche pour "$query"'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Afficher les suggestions de recherche pendant la saisie
    return const Center(
      child: Text('Suggestions de recherche'),
    );
  }
}
