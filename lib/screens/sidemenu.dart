import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/get_started.dart';
import 'package:gecimmo_application/screens/home.dart';
import 'package:gecimmo_application/screens/validation.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF2F3D4B),
        child: Stack(
          children: [
            ListView(
              // Remove padding,
              padding: EdgeInsets.zero,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.5, color: Color(0xFFD0B3A2)),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: UserAccountsDrawerHeader(
                        accountName: const Text('Salima leyla',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            )),
                        accountEmail: const Text('Administration',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                        currentAccountPicture: CircleAvatar(
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/ellipse-1-bg.png',
                              fit: BoxFit.cover,
                              width: 90,
                              height: 90,
                            ),
                          ),
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xFF2F3D4B),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      right: 30,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.cancel_outlined,
                          color:  Color.fromARGB(255, 255, 255, 255),
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                ListTile(
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: const Text('Tableau de bord',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    }),
                ListTile(
                  leading: const Icon(
                    Icons.local_mall_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: const Text('Demande d\'achat',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  onTap: () => {},
                ),
                ListTile(
                    leading: const Icon(
                      Icons.currency_exchange,
                      color: Colors.white,
                      size: 30,
                    ),
                    title: const Text('Validation Workflow',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Validation()),
                      );
                    }),
                ListTile(
                  leading: const Icon(
                    Icons.add_ic_call_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: const Text('Appel d\'offre',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.apartment,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: const Text('Terrain',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.assured_workload,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: const Text('Marchés',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  onTap: () => {},
                ),
              ],
            ),
            Positioned.fill(
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.9,
                ),
                padding: const EdgeInsetsDirectional.only(top: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color.fromARGB(91, 255, 255, 255),
                      width: 2.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      icon: const Icon(Icons.settings_outlined,
                          color: Colors.white, size: 30),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      icon: const Icon(Icons.account_circle_outlined,
                          color: Colors.white, size: 30),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStarted()),
                        );
                      },
                      icon: const Icon(Icons.logout,
                          color: Color(0xFFD0B3A2), size: 30),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
