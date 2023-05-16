import 'package:flutter/material.dart';

class Transferer extends StatefulWidget {
  @override
  _TransfererState createState() => _TransfererState();
}

class _TransfererState extends State<Transferer> {
  List<String> contacts = [
    'Contact 1',
    'Contact 2',
    'Contact 3',
    'Contact 4',
    'Contact 5',
    'Contact 1',
    'Contact 2',
    'Contact 3',
    'Contact 4',
    'Contact 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
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
             
            padding: 
              const EdgeInsets.all(10.0),
              child: Column(children: [
                TextField(

          cursorColor: Color.fromARGB(255, 211, 116, 14),
          decoration: InputDecoration(
          hintText: 'Rechercher une coopérative...',
          hintStyle: TextStyle(color: Colors.grey),

   
          prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 211, 116, 14),),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(234, 230, 101, 21)))

     ),
   onChanged: (value) {
                  // Action lorsque la valeur de la recherche change
   },
    ),
 
 ],
 
 )

            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(contacts[index]),
                    onTap: () {
                      // Action lorsque l'utilisateur appuie sur un contact
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


