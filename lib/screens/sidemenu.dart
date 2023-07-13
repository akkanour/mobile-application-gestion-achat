import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/get_started.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color(0xFF2F3D4B),
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Salima leyla',
                style: TextStyle(color: Colors.black)),
            accountEmail: const Text('Administration',
                style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/image/ellipse-1-bg.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image/abck-img-bg.png')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text('Tableau de bord',
                style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.local_mall, color: Colors.white),
            title:
                Text('Demande d\'achat', style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.currency_exchange, color: Colors.white),
            title: Text('Validation Workflow',
                style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.add_call, color: Colors.white),
            title:
                Text('Appel d\'offre', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.apartment, color: Colors.white),
            title: Text('Terrain', style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.assured_workload,
              color: Colors.white,
            ),
            title: Text('Marchés', style: TextStyle(color: Colors.white)),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Settings', style: TextStyle(color: Colors.white)),
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onTap: () => null,
          ),
          ListTile(
              title: Text('Logout', style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.logout, color: Colors.white),
              //onTap: () =>GetStarted(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GetStarted()),
                );
              }),
        ],
      ),
    ));
  }
}
