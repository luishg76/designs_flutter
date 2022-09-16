import 'dart:ui';

import 'package:designs_flutter/providers/menu_provider.dart';
import 'package:designs_flutter/widgets/background_widget.dart';
import 'package:designs_flutter/widgets/custom_botton_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
         
     return Scaffold(
        body: Stack(
          children: [
            backgroundWidget(),
            _BodyHome(),            
          ],
        ),
        bottomNavigationBar: CustomBottonNavigation(),
    );
  }
}

class _BodyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
           child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [       
                _titleWidget(), 
                _TableWidget(),
              ],
             ),
           ),
      );    
  }
} 

class _TableWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Container(
        padding: EdgeInsets.only(top: 25, left: 10,right: 10),
        child: Table(
          children: [
            TableRow(
              children:[_SingleCardWidget(title: 'General',icon: Icons.widgets_outlined, color: Colors.lightBlue), 
                        _SingleCardWidget(title: 'Transport',icon: Icons.train,color: Colors.redAccent)]
            ),           
            TableRow(
              children:[_SingleCardWidget(title: 'Shopping',icon: Icons.shopping_bag_outlined, color: Colors.purpleAccent), 
                        _SingleCardWidget(title: 'Bills',icon: Icons.money_off, color: Colors.pinkAccent)]
            ),
            TableRow(
              children:[_SingleCardWidget(title: 'Entertaiment',icon: Icons.movie_outlined, color: Colors.orangeAccent), 
                        _SingleCardWidget(title: 'Grocery',icon: Icons.mode_night_outlined, color: Colors.blueGrey)]
            ),
            
          ]
          ),
       );
  }
}

class _SingleCardWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  _SingleCardWidget({required this.title, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
     return Container(
        margin: EdgeInsets.all(10),
        height: 170,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(62, 66, 107, 0.7)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( 
                  //height: 60,
                  //width: 60,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35), 
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1,0.98],
                      colors:[color,Colors.black.withOpacity(0.9)],
                      ),
                    ),
                  child:Icon(icon,color:Colors.white, size: 35,)
                  ),
                //SizedBox(height: 25),
                Text(title, style: TextStyle(color:color, fontSize: 14, fontWeight: FontWeight.bold ),)
              ],
          
            ),
          ),
        ),
       );
  }
}

class _titleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Container(
             padding: EdgeInsets.only(left: 30.0, top: 25.0, right: 30.0),
             child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Classify Transaction', style: TextStyle(color: Colors.white, fontSize: 25, ),),
                     SizedBox(height: 10,),
                     Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white30, fontSize: 18, ))
        ],
       )
      );
  }
}
