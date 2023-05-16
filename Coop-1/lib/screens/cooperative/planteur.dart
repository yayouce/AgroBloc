import 'package:flutter/material.dart';
import 'popup.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});
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
                margin: const EdgeInsets.only(top: 5, right: 2, bottom: 5),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.add,
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
                  "Aucun planteur enregistré",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ))),
        ));
  }
}
