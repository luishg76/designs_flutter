import 'dart:js';

import 'package:designs_flutter/providers/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CustomBottonNavigation extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     final menuProvider=Provider.of<MenuProvider>(context);
     
     return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      //showSelectedLabels: false,
      unselectedItemColor: Color.fromRGBO(116,117,152,1),
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      currentIndex: menuProvider.selectindex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.image_outlined),
          label: 'Basic'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sim_card_download_outlined),
          label: 'Scroll'
          ) 
      ],
      onTap: (index){
        menuProvider.selectindex=index;
        switch(index){
          case 0:Navigator.pushNamed(context, 'basic_screen'); break;
          case 1:Navigator.pushNamed(context, 'home_screen'); break;
          case 2:Navigator.pushNamed(context, 'scroll_screen'); break;
        }          
      });
  }
}