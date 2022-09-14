import 'package:designs_flutter/widgets/background_widget.dart';
import 'package:designs_flutter/widgets/custom_botton_navigation.dart';
import 'package:flutter/material.dart';


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
           child: Container(
             padding: EdgeInsets.only(left: 30.0, top: 50.0, right: 15.0),                      
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [              
                Text('Classify Transaction', style: TextStyle(color: Colors.white, fontSize: 25, ),),
                SizedBox(height: 10,),
                Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white30, fontSize: 18, ))
              ],
             ),
           ),
      ),
    );
  }
} 
