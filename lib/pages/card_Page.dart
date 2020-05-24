import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:urbanbus/pages/Controll.dart';
import 'package:urbanbus/pages/Puntos_Ruta.dart';

class CardPage extends StatefulWidget {
  @override
  CardPages createState() => CardPages();
}

class CardPages extends State<CardPage> {
  static PuntosMap pm = PuntosMap();

  static ControllGoogle g = ControllGoogle();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        //   _cardTipo1('assets/images.jpeg', 'Vergel chiveria', 'Azul',Colors.lightBlue),
        // _cardTipo1('assets/ima1.jpeg', 'Bajadas', 'Azul',Colors.lightBlue),
        // _cardTipo1('assets/ima2.jpeg', 'Reserva 1', 'verde', Colors.lightGreen),
        // _cardTipo1('assets/ima3.jpg', 'Amapolas', 'Blanco/amarillo', Colors.yellowAccent),
        //_cardTipo1('assets/ima4.jpg', 'Bolivar', 'Rojo', Colors.red),
        //_cardTipo1('assets/ima5.jpeg', 'santa fe', 'verde', Colors.lightGreen),
        //_cardTipo1('assets/images.jpeg', 'Vergel chiveria', 'Azul',Colors.lightBlue),
        // _cardTipo1('assets/ima1.jpeg', 'Bajadas', 'Azul',Colors.lightBlue),
        // _cardTipo1('assets/ima3.jpg', 'Amapolas', 'Blanco/amarillo', Colors.yellow),
        _cardTipo1(
            'assets/images.jpeg', 'Vergel chiveria', 'Azul', Colors.lightBlue),
        _cardTipo1('assets/ima4.jpg', 'Bolivar', 'Rojo', Colors.red),
        _cardTipo1(
            'assets/ima3.jpg', 'Amapolas', 'Blanco/amarillo', Colors.yellow),
      ],
    );
  }

  Widget _cardTipo1(
      String assets, String titulo, String color, Color colorfondo) {
    return Card(
      color: colorfondo,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 100,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(fit: BoxFit.cover, image: AssetImage(assets)),
                  )),
              Container(
                width: 180,
                child: ListTile(
                  title: Text(titulo),
                  subtitle: Text('Color dominante:$color'),
                  onTap: () {
                    setState(() {
                      _current_location();
                      pm.createPoints();
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _current_location() async {
    final GoogleMapController controller = await g.get().future;
    setState(() {
      controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          bearing: 0, target: LatLng(19.1874195, -96.1695044), zoom: 15)));
    });
  }
}
