import 'package:flutter/material.dart';

class ConfirmationPage extends StatelessWidget {
  final String beneficiaire;
  final double montant;
  final bool fraisRetrait;
  final TextEditingController infoBeneController = TextEditingController();

  ConfirmationPage({required this.beneficiaire, required this.montant, required this.fraisRetrait});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation du transfert'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Détails du transfert :',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text('Bénéficiaire : $beneficiaire'),
            SizedBox(height: 8.0),
            Text('Montant : $montant'),
            SizedBox(height: 8.0),
            Text('Frais de retrait : ${fraisRetrait ? 'Oui' : 'Non'}'),
            SizedBox(height: 24.0),
            Text(
              'Veuillez confirmer le paiement :',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: infoBeneController,
              decoration: InputDecoration(
                hintText: 'Informations du bénéficiaire',
              ),
              onChanged: (value) {
                // Action lorsque les informations du bénéficiaire changent
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String infoBene = infoBeneController.text;
                // Action lorsque l'utilisateur appuie sur le bouton de confirmation
                // Vous pouvez utiliser les valeurs beneficiaire, montant, fraisRetrait et infoBene pour effectuer le traitement approprié.
              },
              child: Text('Confirmer le paiement'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ConfirmationPage(
      beneficiaire: 'Nom du bénéficiaire',
      montant: 100,
      fraisRetrait: true,
    ),
  ));
}
