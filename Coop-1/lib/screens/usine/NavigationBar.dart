
import 'package:dashboard/screens/usine/Home_page.dart';
import 'package:dashboard/screens/usine/cooperatives.dart';
import 'package:dashboard/screens/usine/historiqueTransaction.dart';
import 'package:flutter/material.dart';




class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
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

class _selectedItemIndex {
}