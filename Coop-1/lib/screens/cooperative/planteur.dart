//import 'dart:js';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ThirdRoute extends StatefulWidget {
  @override
  _ThirdRouteState createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  String toy = "ffsqf";
  //const ThirdRoute({super.key});
  Future getPlanteur() async {
    var url = "http://localhost:8082/planteur/viewPlanteur.php";
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Planteur',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              actions: [
                Container(
                  margin: const EdgeInsets.only(top: 5, right: 20, bottom: 5),
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
                    margin:
                        const EdgeInsets.only(top: 17, right: 195, bottom: 5),
                    child: Text(
                      "Mes Planteurs",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
              ],
            ),
            body: FutureBuilder(
              future: getPlanteur(),
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
                            title: Text(list[index]['Nom_planteur'] +
                                " " +
                                list[index]['Pren_planteur']),
                          );
                        },
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              },
            )));
  }
}
