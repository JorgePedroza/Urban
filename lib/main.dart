import 'package:flutter/material.dart';
import 'package:urbanbus/routes/rutas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UrbabBus',
     initialRoute: 'logeo',
     routes: getRoutes(),
    );
  }
}


