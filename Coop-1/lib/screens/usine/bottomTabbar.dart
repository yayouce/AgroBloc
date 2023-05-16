import 'package:flutter/material.dart';

class BottomTabBarNavigation extends StatefulWidget {
  final List<Widget> pages;

  BottomTabBarNavigation({required this.pages});

  @override
  _BottomTabBarNavigationState createState() => _BottomTabBarNavigationState();
}

class _BottomTabBarNavigationState extends State<BottomTabBarNavigation> {
  int _currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_currentIndex],
      bottomNavigationBar:BottomNavigationBar(
  currentIndex:_currentIndex,
  iconSize: 40,
  selectedItemColor: Color.fromARGB(255, 213, 96, 18),
  type:BottomNavigationBarType.fixed,
    items:[
       BottomNavigationBarItem(
        label: "Accueil",
        icon: Icon(Icons.home,color: Colors.black12,),

       ),

       BottomNavigationBarItem(
        label: "Transfere",
        icon: Icon(Icons.arrow_forward_sharp),
    
       ),


       BottomNavigationBarItem(
       
        label: "Dasboard",
        icon: Icon(Icons.dashboard_rounded),
   
        
       )
    ],
    onTap: (index){
      setState(() {
        _currentIndex=index;
      });
    },
  ),
    );
  }
}
