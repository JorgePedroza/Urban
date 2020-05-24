import 'package:flutter/material.dart';
import 'package:urbanbus/pages/bloc/repository.dart';
import 'package:urbanbus/pages/info.dart';
import 'package:urbanbus/pages/map_google.dart';
import 'package:urbanbus/pages/perfil_page.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPage createState() => _MapPage();
}

class _MapPage extends State<MapPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  Repository repo = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: <Widget>[
          MapSample(),
          modCuenta(),
          publicidad(),
          MostrarInfo(),
          modPerfil(context),
          //     _crearMostrarInfo(),
        ],
      ),
      drawer: PerfilPage(),
    );
  }

  Widget modCuenta() {
    return Container(
      width: 50,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          RaisedButton(
              color: Colors.white,
              child: Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'cuentas');
              }),
        ],
      ),
    );
  }

  Widget modPerfil(context) {
    return Container(
      width: 50,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          RaisedButton(
              color: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              onPressed: () {
                scaffoldKey.currentState.openDrawer();
              }),
        ],
      ),
    );
  }

  Widget publicidad() {

     
    if (repo.get() >= 2) {

      return Container();
     
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Container(
            height: 30,
            width: 220,
            child: FittedBox(
                fit: BoxFit.fill, child: Image.asset('assets/giphy.gif')),
          ),
        ],
      );
    }
  }
}
