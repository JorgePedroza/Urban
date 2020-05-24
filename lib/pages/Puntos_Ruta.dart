
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PuntosMap{
int i=1;
  static PuntosMap _instance = PuntosMap._internal();

  PuntosMap._internal();

  factory PuntosMap() {
    return _instance;
  }
   
 List<LatLng> _points = <LatLng>[];
  
 void createPoints() {
  List<LatLng> rutaCB = <LatLng>[];
   rutaCB.add(LatLng(19.1874195, -96.1695044));
   rutaCB.add(LatLng(19.2074195, -96.1695044));  
   _points = rutaCB;
}
 List<LatLng> puntos(){
   
   return _points;
  }

void deletePoints() {
   
   _points = [];


}
get(){
  return i;
}

void it(){
  i=2;
}

}