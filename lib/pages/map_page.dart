import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:urbanbus/pages/Scroll_infoCamiones_page.dart';
import 'package:urbanbus/pages/bloc/Puntos_Ruta.dart';
import 'package:urbanbus/pages/bloc/repository.dart';

import 'package:urbanbus/pages/perfil_page.dart';

class MapPage extends StatefulWidget {
  final Function function;
  MapPage({Key key, this.function}) : super(key: key);

  @override
  _MapPage createState() => _MapPage();
}

class _MapPage extends State<MapPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<_MapPage> _key = GlobalKey();
  Completer<GoogleMapController> _controller = Completer();
  Repository _repo = Repository();
  PuntosMap pm = PuntosMap();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          _googleMap(),
          _modCuenta(),
          _publicidad(),
          MostrarInfo(
            key: _key,
            function1: _methodInParent,
          ),
          _modPerfil(context),
        ],
      ),
      drawer: PerfilPage(),
    );
  }

  Widget _modCuenta() {
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

  Widget _modPerfil(context) {
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
                _scaffoldKey.currentState.openDrawer();
              }),
        ],
      ),
    );
  }

  Widget _publicidad() {
    if (_repo.get() >= 2) {
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

  Widget _googleMap() {
    final CameraPosition _posicionInicial = CameraPosition(
      target: LatLng(19.1874195, -96.1695044),
      zoom: 18.4746,
    );

    return Scaffold(
      body: GoogleMap(
        minMaxZoomPreference: MinMaxZoomPreference(10, 20),
        polylines: Set<Polyline>.of(<Polyline>[
          Polyline(
            onTap: () {
              setState(() {
                print('object');
              });
            },
            polylineId: PolylineId('2'),
            consumeTapEvents: true,
            color: Colors.blue,
            width: 5,
            points: _createPoints(),
          )
        ]),
        padding: EdgeInsets.only(
          top: 1000.0,
        ),
        compassEnabled: false,
        myLocationEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: _posicionInicial,
        onMapCreated: (GoogleMapController controller) {
          //  _controller.complete(controller);
          _controller.complete(controller);

          if (_controller.isCompleted) {
            print('se acaba de completar');
          } else {
            print('no esta completo');
            _controller.complete(controller);
          }
        },
      ),
      floatingActionButton: _crarBotonLocalitation(),
    );
  }

  Widget _crarBotonLocalitation() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButton(
                child: Icon(
                  Icons.my_location,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                onPressed: () async {
                  _current_location();
                  pm.deletePoints();
                  // print(_controller);
                }),
          ],
        ),
      ],
    ));
  }

  void _current_location() async {
    final GoogleMapController controller = await _controller.future;
    LocationData location;
    var _location = new Location();
    try {
      location = await _location.getLocation();
    } catch (e) {
      print('ERROR' + e.toString());
      location = null;
    }
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        bearing: 0,
        target: LatLng(location.latitude - 0.007, location.longitude),
        zoom: 16.5)));
    setState(() {});
  }

  List<LatLng> _createPoints() {
    List<LatLng> points = [];

    setState(() {
      points = pm.puntos();
    });

    return points;
  }

  _methodInParent() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        bearing: 0, target: LatLng(19.174087, -96.149792), zoom: 14.6)));
    setState(() {});
  }
}
