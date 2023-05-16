import 'package:dashboard/screens/connexion/Test.dart';
import 'package:dashboard/screens/pisteur/transfert.dart';

import 'bottomTabbar.dart';
import 'UsineAccueil.dart';
import 'Transere.dart';
import 'Dashboard.dart';


import 'package:flutter/material.dart';



void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Usine App",
      debugShowCheckedModeBanner: false,
      home:BottomTabBarNavigation(
        pages: [
          UsineAccueil(),
          Transfere(),
         DashboardApp(),
        
        ],
      ),
    
    );
  }
}

