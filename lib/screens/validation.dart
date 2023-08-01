import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gecimmo_application/data.dart';
import 'package:gecimmo_application/screens/home.dart';
import 'package:gecimmo_application/screens/sidemenu.dart';

class Validation extends StatefulWidget {
  const Validation({Key? key}) : super(key: key);

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  PageController pageController = PageController();

  List<Info> infos = List.of(Data.infos);
  List<Info> items = <Info>[];

  @override
  initState() {
    items = infos;
    super.initState();
  }

  void filterSearchResults(String query) {
    List<Info> result = <Info>[];
    if (query.isEmpty) {
      result = infos;
    } else {
      result = infos
          .where((infos) =>
              infos.respo!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      items = result;
    });
  }

  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color(0xFF2F3D4B),
            content: const Text(
              'Vous voulez vraiment enregistrer cette modification',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Validation()),
                    );
                  },
                  child: const Icon(Icons.block)),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Validation()),
                    );
                  },
                  child: const Icon(Icons.check_circle_outline_rounded)),
            ],
          );
        });
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    String? codeDialog;
    String? valueText;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            backgroundColor: const Color(0xFF2F3D4B),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              decoration: const InputDecoration(
                hintText: "Observation",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              ),
              maxLines: 5,
              minLines: 1,
            ),
            actions: <Widget>[
              MaterialButton(
                color: Colors.white,
                textColor: Colors.black,
                child: const Text('Enregister'),
                onPressed: () {
                  showAlertDialog();
                },
              ),
            ],
          );
        });
  }

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
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              // ignore: non_constant_identifier_names
              onChanged: (Value) {
                filterSearchResults(Value);
              },
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
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
                itemCount: items.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(
                    key: ValueKey(items[index].respo),
                    startActionPane: ActionPane(
                      extentRatio: 0.25,
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          label: "VALIDER",
                          foregroundColor: Colors.white,
                          icon: Icons.check,
                          backgroundColor: const Color(0xFF05FF00),
                          onPressed: (context) =>
                              {_displayTextInputDialog(context)},
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      extentRatio: 0.25,
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                            label: "DELETE",
                            icon: Icons.delete_outline_outlined,
                            backgroundColor: const Color(0xFFFF0000),
                            onPressed: (context) {
                              _displayTextInputDialog(context);
                            }),
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
          onTap: (int index) {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            } else if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Validation()),
              );
            } else if (index == 2) {}
          },
          selectedItemColor: const Color.fromARGB(255, 97, 92, 92),
          backgroundColor: const Color(0xFFD0B3A2),
          // Couleur de l'élément sélectionné
          unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          // Couleur des éléments non sélectionnés
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

  Widget listTile(int index) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text('Numéro :'
            " ${items[index].numero!}\nMontant :${items[index].montant!}\nRésponsable Sur La Validation :${items[index].respo}"),
      ),
    );
  }
}