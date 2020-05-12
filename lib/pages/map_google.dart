import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  final CameraPosition _posicionInicial = CameraPosition(
    target: LatLng(19.1874195, -96.1695044),
    zoom: 16.4746,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        padding: EdgeInsets.only(
          top: 1000.0,
        ),
        compassEnabled: false,
        myLocationEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: _posicionInicial,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
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
}
