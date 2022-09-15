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
              children:[_SingleCardWidget(title: 'General',icono: Icons.widgets_outlined, color:Colors.blue), 
                        _SingleCardWidget(title: 'Transport',icono: Icons.train, color:Colors.purple)]
            ),           
            TableRow(
              children:[_SingleCardWidget(title: 'Shopping',icono: Icons.shopping_bag_outlined, color:Colors.pink), 
                        _SingleCardWidget(title: 'Bills',icono: Icons.clear_all_outlined, color:Colors.purple)]
            ),
            TableRow(
              children:[_SingleCardWidget(title: 'Entertaiment',icono: Icons.movie_outlined, color:Colors.blue), 
                        _SingleCardWidget(title: 'Grocery',icono: Icons.train, color:Colors.purple)]
            ),
          ]
          ),
       );
  }
}

class _SingleCardWidget extends StatelessWidget {
  final Color color;
  final IconData icono;
  final String title;
  _SingleCardWidget({required this.title, required this.icono, required this.color});

  @override
  Widget build(BuildContext context) {
     return Container(
        margin: EdgeInsets.all(10),
        height: 170,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(62, 66, 107, 0.7)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( 
              //height: 60,
              //width: 60,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60), 
                gradient: RadialGradient(colors:[Color.fromRGBO(color.red+10, color.green+10, color.blue+10, 1), color ])
                ),
              child:Icon(icono,color:Colors.white60, size: 35,)
              ),
            //SizedBox(height: 25),
            Text(title, style: TextStyle(color: color, ),)
          ],

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
