import 'package:dashboard/constant.dart';
import 'package:dashboard/screens/pisteur/reglerPlanteur.dart';
import 'package:dashboard/screens/pisteur/transfert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

import 'capturepoids.dart';

class PaiementTest extends StatefulWidget {
  const PaiementTest({super.key});

  @override
  State<PaiementTest> createState() => _PaiementTestState();
}

class _PaiementTestState extends State<PaiementTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0XFF00B686),
        centerTitle: true,
        title: const Text(
          'Récupération du poids',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TransferPage()));
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            ' Prix board champs : 900 FCFA',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 85,
          ),
          buildContactRow(
            "PRODUCTEUR",
            "M. Konan Frédric",
            "+22596254122",
          ),
          SizedBox(
            height: 60,
          ),
          buildContactRow(
            "QUANTITE",
            " 12 kg",
            "",
          ),
          SizedBox(
            height: 60,
          ),
          buildContactRow(
            "PRIX",
            "1.998.200 FCFA",
            "",
          ),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0XFF00B686), // Background color
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ReglerPlanter()));
            },
            child: const Text(
              'Payer',
            ),
          ),
          /*Text(
            'Prix board champs : 900 FCFA',
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 2,
            ),
          )*/
        ],
      ),
    );
  }
}

Container buildContactRow(
  String name,
  String phone,
  String num,
  /*String url*/
) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 0,
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            /*CircleAvatar(
              backgroundImage: NetworkImage(url),
              radius: 25,
            ),*/
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: [
                        Text(
                          phone,
                          style: (TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey,
                          )),
                        ),
                        Text(
                          num,
                          style: (TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey,
                          )),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}
