// main.dart
import 'package:dashboard/screens/usine/Header.dart';
import 'package:dashboard/screens/usine/Home_page.dart';
import 'package:dashboard/screens/usine/historiqueTransaction.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';



class cooperatives extends StatefulWidget {
  const cooperatives({Key? key}) : super(key: key);

  @override
  State<cooperatives> createState() => _cooperativesState();
}

class _cooperativesState extends State<cooperatives> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "CoopA", "age": 29},
    {"id": 2, "name": "CoopB", "age": 40},
    {"id": 3, "name": "CoopC", "age": 5},
    {"id": 4, "name": "CoopD", "age": 35},
    {"id": 5, "name": "CoopE", "age": 21},
    {"id": 6, "name": "CoopF", "age": 55},
    {"id": 7, "name": "CoopG", "age": 30},
    {"id": 8, "name": "CoopH", "age": 14},
    {"id": 9, "name": "CoopI", "age": 100},
    {"id": 10, "name": "CoopJ", "age": 32},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

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
      body: SafeArea(
        child: Column(
          children: [
            HeaderPage(),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                onChanged: (value) => _runFilter(value),
                decoration: const InputDecoration(
                  
                    labelText: 'Rechercher une cooperative', suffixIcon: Icon(Icons.search)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Container(
              child: Expanded(
                child: _foundUsers.isNotEmpty
                    ? ListView.builder(
                  itemCount: _foundUsers.length,
                  itemBuilder: (context, index) => Card(
                    key: ValueKey(_foundUsers[index]["id"]),
                    color: Color(0XFF00B686).withOpacity(0.25),
                    elevation: 8,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Text(
                        _foundUsers[index]["id"].toString(),
                        style: const TextStyle(fontSize: 24),
                      ),
                      title: Text(_foundUsers[index]['name'], style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text( ' nombre de transactions:   '
                          '${_foundUsers[index]["age"].toString()}',style: TextStyle(fontStyle: FontStyle.italic),),

                    ),
                  ),
                )
                    : const Text(
                  'Aucun résultat trouvé',
                  style: TextStyle(fontSize: 24, color: Color(0XFF00B686)),
                ),
              ),
            ),
          ],
        ),
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

