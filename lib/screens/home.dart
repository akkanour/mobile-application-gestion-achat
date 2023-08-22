import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/sidemenu.dart';
import 'package:gecimmo_application/screens/validation.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Divider(),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 10,
              ),
              primary: false,
              padding: const EdgeInsets.all(5),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF555A71),
                    ),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 0, left: 10, right: 0),
                    child: Stack(
                      children: [
                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: const <Widget>[
                            Text(
                              'Demande de prix',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Divider(),
                            Text(
                              '65',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Divider(),
                            Text(
                              '31 334 000,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF555A71),
                    ),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 0, left: 10, right: 0),
                    child: Stack(
                      children: [
                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: const <Widget>[
                            Text(
                              'Avenants',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Divider(),
                            Text(
                              '6',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Divider(),
                            Text(
                              '00,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF555A71),
                    ),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 0, left: 10, right: 0),
                    child: Stack(
                      children: [
                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: const <Widget>[
                            Text(
                              'Appel d\'offres',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Divider(),
                            Text(
                              '24',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Divider(),
                            Text(
                              '1 000 038 010,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF555A71),
                    ),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 0, left: 10, right: 0),
                    child: Stack(
                      children: [
                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: const <Widget>[
                            Text(
                              'Marchés',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Divider(),
                            Text(
                              '53',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Divider(),
                            Text(
                              '21 754 080,00',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xFFD0B3A2),
                  child: Icon(
                    Icons.fact_check_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Text('Bons de commandes par projet',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
              ],
            ),
            const Divider(),
            Container(
              height : 200,
              width: 350,
            child :
            SfCartesianChart(
              primaryXAxis: CategoryAxis(
                labelStyle: const TextStyle(
                  color: Colors.white,
                ),
                majorTickLines: const MajorTickLines(
                  color: Colors.white,
                ),
                minorTickLines: const MinorTickLines(
                  color: Colors.white,
                ),
                axisLine: const AxisLine(
                  color: Colors.white,
                ),
              ),
              primaryYAxis: NumericAxis(
                labelStyle: const TextStyle(
                  color: Colors.white,
                ),
                majorTickLines: const MajorTickLines(
                  color: Colors.white,
                ),
                minorTickLines: const MinorTickLines(
                  color: Colors.white,
                ),
                axisLine: const AxisLine(
                  color: Colors.white,
                ),
              ),
              series: <ChartSeries>[
                LineSeries<SalesData, String>(
                  dataSource: <SalesData>[
                    SalesData('Jan', 35),
                    SalesData('Feb', 28),
                    SalesData('Mar', 34),
                    SalesData('Apr', 32),
                    SalesData('May', 40),
                    SalesData('Jun', 55),
                    SalesData('Jul', 30),
                    SalesData('Aug', 45),
                    SalesData('Sep', 20),
                    SalesData('Oct', 50),
                    SalesData('Nov', 25),
                    SalesData('Dec', 48),
                  ],
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                )
              ],
            ),
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
          selectedItemColor: const Color.fromARGB(
              66, 52, 49, 49), // Set selected icon color to blue
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
                MaterialPageRoute(builder: (context) => const Validation()),
              );
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Validation()),
              );
            }
          },
        ),
      ),
    );
  }
}
class SalesData {
  SalesData(this.month, this.sales);
  final String month;
  final double sales;
}