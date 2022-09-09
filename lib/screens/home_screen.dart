
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Column(
          children: [
            Container(
                 child: Image.asset('assets/design1.jpg'),
            ),         
            Center(
             child: Text('Hola Mundo'),
       ),
          ],
        ),
    );
  }
}