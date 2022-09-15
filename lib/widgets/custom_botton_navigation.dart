import 'package:flutter/material.dart';


class CustomBottonNavigation extends StatefulWidget {

  @override
  State<CustomBottonNavigation> createState() => _CustomBottonNavigationState();
}

class _CustomBottonNavigationState extends State<CustomBottonNavigation> {
  int _selectIndex=0;

  @override
  Widget build(BuildContext context) {
     return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      //showSelectedLabels: false,
      unselectedItemColor: Color.fromRGBO(116,117,152,1),
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      currentIndex: _selectIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendario'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outline_outlined),
          label: 'Grafico'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_outlined),
          label: 'Usuarios'
          ) 
      ],

      onTap: (index){
        setState(() {
          _selectIndex=index;
        });                         
      },

      );

  }
}