import 'package:flutter/material.dart';
import 'popup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  Future getPisteur() async {
    var url = "http://localhost:8082/pisteur/viewPisteur.php";
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pisteurs',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              Container(
                margin: const EdgeInsets.only(top: 5, right: 289, bottom: 5),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 17, right: 195, bottom: 5),
                  child: Text(
                    "Mes Pisteurs",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
            ],
          ),
          body: FutureBuilder(
            future: getPisteur(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        if (true) {
                          print(snapshot.data);
                        }
                        List list = snapshot.data;
                        return ListTile(
                          title: Text(list[index]['Nom_pisteur'] +
                              " " +
                              list[index]['Pren_pisteur']),
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ));
  }
}
