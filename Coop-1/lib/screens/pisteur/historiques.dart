import 'dart:ffi';

import 'package:flutter/material.dart';

class Historiques extends StatefulWidget {
  const Historiques({super.key});

  @override
  State<Historiques> createState() => _HistoriquesState();
}

class _HistoriquesState extends State<Historiques> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF00B686),
          centerTitle: true,
          title: const Text(
            'Historiques des paies',
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
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard("Coopérative Dingré",
                            "19 Mai 2023 à 15:30 ", 400000),
                        buildCategoryCard("Coopérative Bouflé",
                            "19 Mai 2023 à 15:30 ", 1000000),
                        buildCategoryCard("Coopérative Dingo",
                            "19 Mai 2023 à 15:30 ", 9800000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 400000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                        buildCategoryCard(
                            "Coopérative ZoZo", "19 Mai 2023 à 15:30 ", 900000),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

Container buildCategoryCard(String title, String subtitle, int amount) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    height: 85,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "$amount\ FCFA",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Stack(
          children: [
            Container(
              height: 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.grey.shade300),
            ),
            Container(
              height: 5,
              width: 1100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color.fromARGB(0, 0, 0, 0)),
            ),
          ],
        )
      ],
    ),
  );
}
