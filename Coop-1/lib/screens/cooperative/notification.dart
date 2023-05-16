import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Notification',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              Container(
                margin: const EdgeInsets.only(top: 5, right: 335, bottom: 5),
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
            ],
          ),
          body: Center(
              child: Container(
                  child: /*Text(
              "Pas de notifications",
              style: TextStyle(fontSize: 20),
            ),*/
                      Column(
            children: [
              Container(
                child: Icon(
                  Icons.update,
                  size: 130,
                ),
                margin: const EdgeInsets.only(top: 250),
              ),
              Container(
                child: Text(
                  "Vous n'avez aucune notification",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ))),
        ));
  }
}
