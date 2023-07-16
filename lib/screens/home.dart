import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/dashboard.dart';
import 'package:gecimmo_application/screens/my_drawer_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = const Dashboard();
    } else if (currentPage == DrawerSections.demandeAchat) {
      container = const ContactsPage();
    } else if (currentPage == DrawerSections.workflow) {
      container = const EventsPage();
    } else if (currentPage == DrawerSections.appelOffre) {
      container = const NotesPage();
    } else if (currentPage == DrawerSections.terrain) {
      container = const SettingsPage();
    } else if (currentPage == DrawerSections.marche) {
      container = const NotificationsPage();
    }
    return Scaffold(
      backgroundColor: const Color(0xFF2F3D4B),
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
      body: container,
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
      drawer: Drawer(
        backgroundColor: const Color(0xFF2F3D4B),
        child: SingleChildScrollView(
            child: Column(
              children: [
                const HeadOfSideMenu(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        children: [
          menuItem(1, "Tableau de bord", Icons.home,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Demande d'achat", Icons.local_mall,
              currentPage == DrawerSections.demandeAchat ? true : false),
          menuItem(3, "Validation Workflow", Icons.currency_exchange,
              currentPage == DrawerSections.workflow ? true : false),
          menuItem(4, "Appel d'offre", Icons.add_call,
              currentPage == DrawerSections.appelOffre ? true : false),
          menuItem(5, "Terrain", Icons.apartment_outlined,
              currentPage == DrawerSections.terrain ? true : false),
          menuItem(6, "Marché", Icons.assured_workload,
              currentPage == DrawerSections.marche ? true : false),

        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.demandeAchat;
            } else if (id == 3) {
              currentPage = DrawerSections.workflow;
            } else if (id == 4) {
              currentPage = DrawerSections.appelOffre;
            } else if (id == 5) {
              currentPage = DrawerSections.terrain;
            } else if (id == 6) {
              currentPage = DrawerSections.marche;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Dashboard(),
    );
  }
}

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Contacts"),
      ),
    );
  }
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Events"),
      ),
    );
  }
}

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Notes"),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Settings"),
      ),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Notifications"),
      ),
    );
  }
}

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Privacy Policy"),
      ),
    );
  }
}

class SendFeedbackPage extends StatelessWidget {
  const SendFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text("Send Feedback"),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  demandeAchat,
  workflow,
  appelOffre,
  terrain,
  marche,
}
