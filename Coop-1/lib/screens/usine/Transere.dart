import 'package:dashboard/screens/usine/MontantTranfere.dart';
import 'package:flutter/material.dart';

class Transfere extends StatefulWidget {
  const Transfere({Key? key}) : super(key: key);

  @override
  State<Transfere> createState() => _TransfereState();
}

class _TransfereState extends State<Transfere> {
  List<String> contacts = [
    'Coop_VASS',
    'COOP_AB',
    'COOP_SINDOU',
    'COOP_ABYS',
    'COOP_AZE',
    'COOP_EST/OUEST',
    'COOP_ABEBA',
    'COOP_DYS',
    'COOP_SBR',
    'COOP_SVR',
  ];

  String selectedContact = '';
  String transferAmount = '';
  bool isButtonEnabled = false;

  void validateAmount(String value) {
    setState(() {
      transferAmount = value;
      isButtonEnabled = int.tryParse(transferAmount) != null &&
          int.parse(transferAmount) >= 500000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(143,143,143,143),
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () {
            // Action lorsque l'utilisateur appuie sur le bouton de fermeture
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bénéficiaire',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    cursorColor: Color.fromARGB(255, 211, 116, 14),
                    decoration: InputDecoration(
                      hintText: 'Rechercher une coopérative...',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 211, 116, 14),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(234, 230, 101, 21)),
                      ),
                    ),
                    onChanged: (value) {
                      // Action lorsque la valeur de la recherche change
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    title: Text(contact),
                    onTap: () {
                      setState(() {
                        selectedContact = contact;
                      });
                      // Naviguer vers la page de saisie du montant
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MontantTransfertPage(
                            contact: contact,
                            onAmountChanged: validateAmount,
                            isButtonEnabled: isButtonEnabled,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}






