import 'package:designs_flutter/providers/menu_provider.dart';
import 'package:designs_flutter/screens/home_screen.dart';
import 'package:designs_flutter/screens/scroll_screen.dart';
import 'package:flutter/material.dart';
import 'package:designs_flutter/screens/basic_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppStateWidget());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,                        
      ),
      initialRoute: 'home_screen',
      routes: {
        'basic_screen':(_)=>BasicScreen(),
        'scroll_screen':(_)=>ScrollScreen(),
        'home_screen':(_)=>HomeScreen(),
      },
    );
  }
}
class AppStateWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(_)=>MenuProvider(),)
      ],
      child: MyApp(),
      );
  }
}

