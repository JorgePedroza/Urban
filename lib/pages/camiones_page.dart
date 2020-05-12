import 'package:flutter/material.dart';
import 'package:urbanbus/pages/card_Page.dart';

class CamionesPage extends StatefulWidget {
  @override
  _CamionesPageState createState() => _CamionesPageState();
}

class _CamionesPageState extends State<CamionesPage> {
  double largo;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    largo = screenSize.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: 
        
        PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            flexibleSpace: Container(
              decoration: _decoracion(),
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.not_listed_location)),
            ]),
          ),
        ),
      body:  CardPage(),
      ),
    );
  }


    BoxDecoration _decoracion() {
    return BoxDecoration(
        gradient: LinearGradient(
            stops: [0.5, 1, 1],
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
            colors: [
              Color.fromRGBO(28, 75, 88, 1),
              Color.fromRGBO(54, 148, 174, 1),
              Colors.white
            ]));
  }
}
