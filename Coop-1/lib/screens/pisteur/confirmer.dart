import 'dart:async';

import 'package:dashboard/screens/pisteur/pisteur.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Confirmer extends StatefulWidget {
  const Confirmer({super.key});

  @override
  State<Confirmer> createState() => _ConfirmerState();
}

class _ConfirmerState extends State<Confirmer> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => PisteurScreen1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.network(
          'https://assets7.lottiefiles.com/packages/lf20_afs4kbqm.json',
        ),
      ),
    );
  }
}
