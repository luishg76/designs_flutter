import 'dart:math';

import 'package:flutter/material.dart';


class backgroundWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Stack
        ( children: [
            Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops:[0.2,0.8],
                colors: [Color(0xff2d2c58), Color(0xff1d202f)],
              ),
             ),
          ),
          Positioned(
            left: -10,
            top: -90,
            child: Transform.rotate(
              angle:-pi/5,
              child: Container(           
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65.0), 
                  color: Color.fromARGB(95, 242, 118, 161)),
              
              ),
            ),
          )
        ],
      ),
    );    
  }
}