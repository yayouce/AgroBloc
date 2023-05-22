import 'dart:async';

import 'package:dashboard/screens/pisteur/paiement.dart';
import 'package:dashboard/screens/pisteur/paiementTest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

class Capturepoids extends StatefulWidget {
  const Capturepoids({super.key});

  @override
  State<Capturepoids> createState() => _CapturepoidsState();
}

class _CapturepoidsState extends State<Capturepoids> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => PaiementTest())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              const SizedBox(
                width: 390,
                height: 200,
              ),
              LottieBuilder.network(
                'https://assets10.lottiefiles.com/packages/lf20_t97bchh7.json',
                height: 285,
              ),
              const SizedBox(
                width: 150,
              ),
              /*SpinKitThreeBounce(
                color: Colors.brown,
                size: 50.0,
              ),*/
            ],
          )
        ],
      ),
    );
  }
}
