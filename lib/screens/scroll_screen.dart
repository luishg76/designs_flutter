import 'dart:ui';

import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          children:[
            _Page1(),
            _Page2()
          ]
        ),
    );
  }
}

class _Page2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0,0.5],
          colors: [Color(0xff060807),Color.fromARGB(255, 236, 110, 7)],
           ),        
        ),
        child: Center(
          child: TextButton(
              style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              backgroundColor: Colors.redAccent,
              shape: StadiumBorder(),
              shadowColor: Colors.black87,
            ),            
            child:Text('Bienvenido', style:TextStyle(color: Colors.white, fontSize: 30.0),),
            onPressed:(){},
             ),
        ),
    );
  }
}

class _Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children:[                
        _background(),
        _frontSection(),
      ]
    );
  }
}

class _frontSection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final textColor =Colors.white;
    return Container(
      margin: EdgeInsets.only(top: 80.0, bottom: 20),      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('06:00 am',style:TextStyle(color: textColor, fontSize: 30.0,),),
          SizedBox(height:5,),
          Text('Miércoles', style: TextStyle(color: textColor, fontSize: 45.0),),
          Expanded(child: Container()),
          Icon( 
            Icons.keyboard_arrow_down_outlined, 
            color: Colors.white38, 
            size: 85.0,
          )
        ],
      ),
    );
  }
}

class _background extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffFFE38F),Color(0xff060807)],
          stops:[0.5,0.5],
          )
        ),
      child: Image.asset('assets/design2.jpg')
      );
  }
}