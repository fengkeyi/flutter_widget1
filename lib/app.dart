import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class ShrineApp extends StatelessWidget{

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Shrine',
      home: HomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,

    );
  }


  Route<dynamic> _getRoute(RouteSettings settings)
 {
    if(settings.name!='/login') {
      return null;
    }
   return MaterialPageRoute<void>(
     settings: settings,
     fullscreenDialog: true,
     builder: (BuildContext context)=> LoginPage(),
   );

  }
}