
import 'package:designs_flutter/widgets/custom_botton_navigation.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Column(
          children: [              
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
                 child: Image.asset('assets/design1.jpg'),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  _titleSection(),
                  _buttonSection(),
                  _descriptionSection(description:'Quis irure velit et velit elit duis exercitation cillum consectetur consequat ea sint tempor eu. Est dolor id aute irure amet quis. Reprehenderit ut quis labore dolore. Mollit incididunt aute dolore pariatur deserunt et reprehenderit velit labore cupidatat fugiat amet tempor minim. Do ut amet amet veniam incididunt in. Ea excepteur pariatur incididunt dolore.'),
                  ]),
                  
            ),

            
          ],
        ),
        bottomNavigationBar: CustomBottonNavigation(),
    );
  }
}

class _descriptionSection extends StatelessWidget {
  String description;

  _descriptionSection({required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('${description}', textAlign: TextAlign.justify,),
    );
  }
}

class _buttonSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _button(Icono: Icons.phone, Titulo:'call'),
          _button(Icono: Icons.route_rounded, Titulo:'route'),
          _button(Icono: Icons.share, Titulo:'share'),
        ],
      ),
    );
  }
}

class _button extends StatelessWidget {
    final IconData Icono;
    final String Titulo;

    _button({ required this.Icono, required this.Titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){}, 
            icon:Icon(Icono, color: Colors.lightBlue, size: 45.0,)
          ),
          SizedBox(height: 15.0,),
          Text(Titulo.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlue),),
        ],
      ),
    );
  }
}

class _titleSection extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    final size_width=MediaQuery.of(context).size.width;
    return Row(
             children:[
              Container(
                margin: EdgeInsets.only(left: 10.0),
                width: size_width*0.75,
                height: 50.0,
                alignment: Alignment.centerLeft,
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Este es el Título de la Imagen', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                    Text('Este es el Autor de la Imagen', style: TextStyle(fontSize: 16.0, color: Colors.black38),)
                  ],
                ),
              ),
              Icon(Icons.star_outlined,color: Colors.red,),
              Text('41')
             ],
      );
  }
}