import 'package:flutter/material.dart';


class CustomBottonNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return BottomNavigationBar(
      items:[
          BottomNavigationBarItem(icon:Icon(Icons.calendar_today_outlined)),
          BottomNavigationBarItem(icon:Icon(Icons.calendar_today_outlined))
          ],

      );       
  }
}