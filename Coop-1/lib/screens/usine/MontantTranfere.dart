import 'package:dashboard/screens/usine/Confirmation.dart';
import 'package:flutter/material.dart';

class MontantTransfertPage extends StatefulWidget {
  final String contact;
  final Function(String) onAmountChanged;
  final bool isButtonEnabled;

  MontantTransfertPage({
    required this.contact,
    required this.onAmountChanged,
    required this.isButtonEnabled,
  });

  @override
  _MontantTransfertPageState createState() => _MontantTransfertPageState();
}

class _MontantTransfertPageState extends State<MontantTransfertPage> {
 String transferAmount = '';
 double transferdoubled=0;
 void _navigateToConfirmationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConfirmationPage(
          beneficiaire: widget.contact, // Passer les détails nécessaires à la page de confirmation
          montant: transferdoubled,
          fraisRetrait: true, // Utiliser la valeur du montant saisie
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(143,143,143,143),
        title: Text('Saisir le montant'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Destinataire : ${widget.contact}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              cursorColor: Color.fromARGB(255, 211, 116, 14),
              decoration: InputDecoration(
                hintText: 'Montant'+' '+'500.000FCFA min',
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(234, 230, 101, 21)),
                ),
              ),
              onChanged: (value) {
    setState(() {
      transferAmount = value;
      transferdoubled=double.parse(transferAmount); // Mettre à jour la valeur du montant lors de la modification du champ de texte
    });
    widget.onAmountChanged(value); // Appeler la fonction `onAmountChanged` pour notifier la modification du montant
  },
            ),
            SizedBox(height: 16.0),
            Padding(
         
              padding: const EdgeInsets.all(8.0),
              child: Center(
                
                child: ElevatedButton(
                       
                  
                  onPressed: widget.isButtonEnabled ? _navigateToConfirmationPage : null,
                  child: Text('Continuer'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
