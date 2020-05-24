import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:urbanbus/pages/Controll.dart';
import 'package:urbanbus/pages/Puntos_Ruta.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  static PuntosMap pm = PuntosMap();

   ControllGoogle g = ControllGoogle();

  final CameraPosition _posicionInicial = CameraPosition(
    target: LatLng(19.1874195, -96.1695044),
    zoom: 16.4746,
  );

  @override
  Widget build(BuildContext context) {
        
   ac();
       return new Scaffold(
         body: GoogleMap(
           polylines: Set<Polyline>.of(<Polyline>[
             Polyline(
               onTap: () {
                 setState(() {
             print('object');
                 });
               },
               polylineId: PolylineId('2'),
               consumeTapEvents: true,
               color: Colors.red,
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
             g.get().complete(controller);
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
                     print(pm.puntos());
                   }),
             ],
           ),
         ],
       ));
     }
   
     void _current_location() async {
       final GoogleMapController controller = await g.get().future;
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
       setState(() {     
       });
     }
   
     List<LatLng> _createPoints() {
       
       List<LatLng> points = [];
   
       setState(() {
         points = pm.puntos();
       });
   
       return points;
     }
   
     void ac() {
       if(pm.get()==1){

         setState(() {
           
         });
       }
     }
}
