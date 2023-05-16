import 'package:dashboard/screens/components/chart_container.dart';
import 'package:dashboard/widgets/activity_header.dart';
import 'package:dashboard/widgets/bar_chart.dart';
import 'package:dashboard/widgets/courses_grid.dart';
import 'package:dashboard/widgets/planing_grid.dart';
import 'package:dashboard/widgets/statistics_grid.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:dashboard/data/data.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'notification.dart';
import 'planteur.dart';
import 'pisteurs.dart';
import 'usines.dart';
import 'track.dart';
import 'fonds.dart';
import 'contrat.dart';

import '../../constant.dart';
import '../../widgets/planing_header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 241, 241),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Acceuil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compare_arrows_sharp,
              size: 30,
            ),
            label: 'Partenaires',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Compte',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: Image.asset(
            'images/pic/agros.png',
            height: 55,
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 243, 241, 241),
          iconTheme: const IconThemeData(color: Colors.grey, size: 28),
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: const SecondRoute()));
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Container(
                      width: 280,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                      ),
                      padding: const EdgeInsets.only(
                          left: 11, right: 20, top: 3, bottom: 3),
                      child: Text(
                        "Tonnage en cours",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    margin: const EdgeInsets.only(
                        left: 10.0, right: 170.0, top: 10, bottom: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                    ),
                    height: 230,
                    width: 370,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Image(
                                  image: AssetImage("images/pic/ferme.png"),
                                  height: 30,
                                ),
                                margin: const EdgeInsets.only(right: 5),
                              ),
                              Container(
                                child: Text(
                                  "SUCAR",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 220, 250, 48)),
                                ),
                                margin: const EdgeInsets.only(right: 28),
                              ),
                              Container(
                                child: Image(
                                  image: AssetImage("images/pic/poidss.png"),
                                  height: 30,
                                ),
                                margin: const EdgeInsets.only(right: 5),
                              ),
                              Container(
                                child: Text(
                                  "10.000 T",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orangeAccent),
                                ),
                                margin: const EdgeInsets.only(right: 25),
                              ),
                              Container(
                                child: Image(
                                  image:
                                      AssetImage("images/pic/gestionnaire.png"),
                                  height: 30,
                                ),
                                margin: const EdgeInsets.only(right: 5),
                              ),
                              Container(
                                child: Text(
                                  "Soro Oumar",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(
                              left: 10, bottom: 70, top: 30),
                        ),
                        Container(
                          child: Text(
                            "Dernier tonnage",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          margin: const EdgeInsets.only(right: 230, bottom: 10),
                        ),
                        Container(
                            child: Row(
                          children: [
                            Container(
                              child: Image(
                                image: AssetImage("images/pic/profil.png"),
                                height: 50,
                              ),
                              margin: const EdgeInsets.only(left: 10),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Koffi Cédric",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    margin: const EdgeInsets.only(right: 50),
                                  ),
                                  Container(
                                    child: Text(
                                      "5.000.000 FRANC CFA",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.lightGreen,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              margin: const EdgeInsets.only(left: 5, right: 30),
                            ),
                            Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "5000 T",
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      margin: const EdgeInsets.only(right: 2),
                                    ),
                                    Container(
                                      child: Text("15h:00"),
                                      margin: const EdgeInsets.only(left: 20),
                                    ),
                                  ],
                                ),
                                margin: const EdgeInsets.only(left: 60)),
                          ],
                        )),
                      ],
                    ),
                    margin: const EdgeInsets.only(top: 6, bottom: 5, left: 2),
                  ),
                  Container(
                    child: Text(
                      'Détails',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    margin: const EdgeInsets.only(
                        left: 1.0, right: 290.0, top: 20, bottom: 5),
                  ),
                  Container(
                    child: Container(
                      child: Container(
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              //scrollDirection: Axis.horizontal,
                              child: Column(
                                children: [
                                  //Première rangée
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 13.0,
                                            right: 11.0,
                                            top: 20,
                                            bottom: 5),
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/agr.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const ThirdRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 12.0, top: 20, bottom: 5),
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/facteur.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const FirstRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 24.0, top: 20, bottom: 5),
                                        padding: const EdgeInsets.only(top: 18),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/usine-verte.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const FourRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text("Les planteurs",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        margin: const EdgeInsets.only(
                                            left: 15, right: 35),
                                      ),
                                      Container(
                                        child: Text("Les pisteurs",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        margin:
                                            const EdgeInsets.only(right: 49),
                                      ),
                                      Container(
                                        child: Text("Les usines",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                      ),
                                    ],
                                  )
                                  //Deuxième rangée
                                  ,
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 13.0,
                                            right: 11.0,
                                            top: 20,
                                            bottom: 5),
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/monn.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const FondRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 12.0, top: 20, bottom: 5),
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/track.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const SuitRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 24.0, top: 20, bottom: 5),
                                        padding: const EdgeInsets.only(top: 18),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/poigne.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const ContratRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text("Fonds",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        margin: const EdgeInsets.only(
                                            left: 45, right: 35),
                                      ),
                                      Container(
                                        child: Text("Suivie",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        margin: const EdgeInsets.only(
                                            left: 50, right: 55),
                                      ),
                                      Container(
                                        child: Text("Liste Contrat",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                  //Troisième rangée
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 13.0,
                                            right: 11.0,
                                            top: 20,
                                            bottom: 5),
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/poidss.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const ThirdRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 12.0, top: 20, bottom: 5),
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/expedition.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const ThirdRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'images/box/box3.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        height: 105,
                                        width: 105,
                                        margin: const EdgeInsets.only(
                                            left: 24.0, top: 20, bottom: 5),
                                        padding: const EdgeInsets.only(top: 18),
                                        child: Column(
                                          children: [
                                            Container(
                                              child: IconButton(
                                                icon: Image.asset(
                                                    'images/pic/fermer.png'),
                                                iconSize: 55,
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          child:
                                                              const ThirdRoute()));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text("Historique\n  tonnage",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        margin: const EdgeInsets.only(
                                            left: 30, right: 65),
                                      ),
                                      Container(
                                        child: Text("Néant",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                        margin:
                                            const EdgeInsets.only(right: 80),
                                      ),
                                      Container(
                                        child: Text("Néant",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
