import 'package:dashboard/screens/usine/Header.dart';
import 'package:dashboard/screens/usine/Home_page.dart';
import 'package:dashboard/screens/usine/cooperatives.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HistoriqueTransactions extends StatefulWidget {
  const HistoriqueTransactions({Key? key}) : super(key: key);

  @override
  State<HistoriqueTransactions> createState() => _HistoriqueTransactionsState();
}

class _HistoriqueTransactionsState extends State<HistoriqueTransactions> {
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
              HeaderPage(),
              Container(
                height:70,
                margin: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(85),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.green.withOpacity(0.22),
                        spreadRadius: 23,
                        blurRadius: 5,
                        offset: Offset(7.0,8.0)
                    )
                  ],

                ),
                child: Center(
                  child: Container(
                    child: Text('Historique des transactions'.toUpperCase(),style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20,
                    ), ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.grey.shade100,
                  child: ListView(
                    padding: EdgeInsets.only(top: 25),
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Transactions",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      buildCategoryCard("Coop1", 900000, "2023-05-20 " ),
                      buildCategoryCard("Coop3", 500000, "2023-05-20 "  ),
                      buildCategoryCard("Coop5", 100000, "2023-05-20 " ),
                      buildCategoryCard("Coop2", 500000, "2023-05-20 " ),
                      buildCategoryCard("Coop3", 500000, "2023-05-20 " ),
                      buildCategoryCard("Coop4", 500000, "2023-05-20 " ),
                      buildCategoryCard("Coop1", 500000, "2023-05-20 "),
                      buildCategoryCard("Coop2", 500000, "2023-05-20 "),
                    ],
                  ),
                ),
              )
            ],
          ),
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
                  return HomePage();
                case 1:
                  // Affiche la page "Transferer"
                  return HistoriqueTransactions();
                case 2:
                  // Affiche la page "Historiques"
                  return cooperatives();
                default:
                  // Par défaut, affiche la page "Poids"
                  return HomePage();
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

}



  Container buildCategoryCard(String title, int amount, String date) {
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
                    width: 5,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "$amount\ FCFA",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),

              Row(
                children: [
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),





            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                height: 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.green.shade300),
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

class _selectedItemIndex {}

















/*import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class ListeCooperatives extends StatefulWidget {
  const ListeCooperatives({Key? key}) : super(key: key);

  @override
  State<ListeCooperatives> createState() => _ListeCooperativesState();
}

class _ListeCooperativesState extends State<ListeCooperatives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        color: Colors.green.shade200,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index){
          print(index);
        },
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 35,
          ),
          Icon(Icons.compare_arrows_rounded,
            color: Colors.white,size: 35,
          ),

          Icon(Icons.settings,
            color: Colors.white, size: 35,)
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle),

                child:Row(children: [
                  Column(
                    children: [Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(top: 15, left: 20),
                      child: Image.asset("assets/logo.png", width: 100, height: 100,),
                    )],
                  ),
                  Column(children: [
                    Center(child:  Container(
                      width: 100,
                      height: 50,
                      margin: EdgeInsets.only(top: 45, left: 58),
                      child: Text('USAN',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

                    ),

                    )
                  ],
                  ),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.only(top: 30, left: 70),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.notifications_outlined),

                    )
                  ],)

                ],)

              //appbar

            ),

            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              child: Row(children: [
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Rechercher une cooperative",
                ),
              )
            ],),)
          ],

        ),

      ),
    );
  }
}
*/