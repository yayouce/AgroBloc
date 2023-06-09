import 'package:dashboard/screens/cooperative/planteur.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/screens/pisteur/poids.dart';
import 'package:dashboard/screens/pisteur/poids.dart';
import 'package:dashboard/screens/pisteur/transfert.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:dashboard/screens/pisteur/historiques.dart';
import 'package:dashboard/screens/pisteur/identite.dart';

import 'package:dashboard/screens/cooperative/pisteurs.dart';
import 'package:dashboard/screens/cooperative/usines.dart';

class CoopScreen1 extends StatefulWidget {
  const CoopScreen1({super.key});

  @override
  State<CoopScreen1> createState() => _CoopScreen1State();
}

class _CoopScreen1State extends State<CoopScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.history, 1),
          buildNavBarItem(Icons.person, 2),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0XFF00B686), Color(0XFF00838F)]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20.0, top: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image(
                              image: AssetImage("images/pic/agros.png"),
                              height: 35,
                            ),
                            margin: const EdgeInsets.only(right: 5),
                          ),
                          Text(
                            "Coopérative Bento",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: Color(0XFF00B686),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.1),
                                    blurRadius: 8,
                                    spreadRadius: 3)
                              ],
                              border: Border.all(
                                width: 1.5,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/pic/usine-verte.png'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "M.Fofana Jean",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.camera_front,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "2.000.000 \FCFA",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.white,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.grey.shade100,
                  child: ListView(
                    padding: EdgeInsets.only(top: 75),
                    children: [
                      Text(
                        "Services",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildActivityButton(
                              Icons.track_changes,
                              "Pisteurs",
                              Colors.blue.withOpacity(0.2),
                              Color(0XFF01579B),
                              0),
                          buildActivityButton(
                              Icons.person_rounded,
                              "Planteurs",
                              Colors.cyanAccent.withOpacity(0.2),
                              Color(0XFF0097A7),
                              1),
                          buildActivityButton(
                              Icons.warehouse,
                              "Usines",
                              Color(0XFFD7CCC8).withOpacity(0.4),
                              Color(0XFF9499B7),
                              2),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Contrats",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCategoryCard("Akatsuki", "En cours"),
                      buildCategoryCard("Phantom Squad", "Terminé"),
                      buildCategoryCard("Las Plagas", "Non respecté"),
                      buildCategoryCard("T Veronica", "Terminé"),
                      buildCategoryCard("Nemesis", "En cours"),
                      buildCategoryCard("Airtreak", "A relancé"),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 185,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(50),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Tonnage en cours",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          Text(
                            "70.900\ T",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black87),
                          )
                        ],
                      ),
                      Container(width: 1, height: 50, color: Colors.grey),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Dernier tonnage",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          Text(
                            "145.010\ T",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Votre tonnage de la dernière campagne est de 145.010 T", //à voir pour la date de la compagne
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  /*Text(
                    "Let's see the cost statistics for this period",
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
                  ),*/
                  /*SizedBox(
                    height: 10,
                  ),*/
                  Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Plus de détail",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF00B686)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              switch (index) {
                case 0:
                  // Affiche la page "Poids"
                  return CoopScreen1();
                case 1:
                  // Affiche la page "Transferer"
                  return Historiques();
                case 2:
                  // Affiche la page "Historiques"
                  return Identite();
                default:
                  // Par défaut, affiche la page "Poids"
                  return CoopScreen1();
              }
            },
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 60,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 4, color: Colors.green)),
                gradient: LinearGradient(colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.green.withOpacity(0.016),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Color(0XFF00B868) : Colors.grey,
        ),
      ),
    );
  }

  Container buildCategoryCard(String title, String amount) {
    String titre = title;
    String etat = amount;
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 85,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "$amount",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300),
              ),
              Container(
                height: 5,
                width: 1100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color.fromARGB(0, 0, 0, 0)),
              ),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector buildActivityButton(IconData icon, String title,
      Color backgroundColor, Color iconColor, int index) {
    return GestureDetector(
      /*onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => TransferPage())),*/
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              switch (index) {
                case 0:
                  // Affiche la page "Poids"
                  return FirstRoute();
                case 1:
                  // Affiche la page "Transferer"
                  return ThirdRoute();
                case 2:
                  // Affiche la page "Historiques"
                  return Historiques();
                default:
                  // Par défaut, affiche la page "Poids"
                  return CoopScreen1();
              }
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class _selectedItemIndex {}
