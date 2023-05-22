import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatefulWidget {
  const HeaderPage({super.key});

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0XFF00B686), Color(0XFF00838F)]),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20.0, top: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Text(
                            "USAN",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          // Container(
                          //   width: 80.0,
                          //   height: 80.0,
                          //   decoration: BoxDecoration(
                          //     color: Color(0XFF00B686),
                          //     boxShadow: [
                          //       BoxShadow(
                          //           color: Colors.black.withOpacity(.1),
                          //           blurRadius: 8,
                          //           spreadRadius: 3)
                          //     ],
                          //     border: Border.all(
                          //       width: 1.5,
                          //       color: Colors.white,
                          //     ),
                          //     borderRadius: BorderRadius.circular(40.0),
                          //   ),
                          //   padding: EdgeInsets.all(5),
                          //   // child: CircleAvatar(
                          //   //   backgroundImage:
                          //   //       AssetImage('images/pic/image1.jpeg'),
                          //   // ),
                          // ),
                          SizedBox(
                            width: 20,
                          ),
                          
                        ],
                      )
                    ],
                  ),
                ),
              );
  }
}