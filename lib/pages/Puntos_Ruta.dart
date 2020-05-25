import 'package:google_maps_flutter/google_maps_flutter.dart';

class PuntosMap {
  int i = 1;
  static PuntosMap _instance = PuntosMap._internal();

  PuntosMap._internal();

  factory PuntosMap() {
    return _instance;
  }

  List<LatLng> _points = <LatLng>[];

  void createPoints() {
    List<LatLng> rutaCB = <LatLng>[];
    //rutaCB.add(LatLng(19.185999, -96.177887));
    //rutaCB.add(LatLng(19.200343, -96.140594));

    //rutaCB.add(LatLng(19.210238, -96.157432));

    //rutaCB.add(LatLng(19.209189, -96.154144));

    //rutaCB.add(LatLng(19.208459, -96.151870));
    
    rutaCB.add(LatLng(19.202557, -96.160199));
     rutaCB.add(LatLng(19.207194, -96.158428));
    rutaCB.add(LatLng(19.210093, -96.157363));
    rutaCB.add(LatLng(19.209337, -96.154933));
    rutaCB.add(LatLng(19.208311, -96.151723));
    rutaCB.add(LatLng(19.207881, -96.150310));
    rutaCB.add(LatLng(19.207653, -96.149368));
    rutaCB.add(LatLng(19.207612, -96.148747));
    rutaCB.add(LatLng(19.208075, -96.146635));
    rutaCB.add(LatLng(19.208178, -96.146248));
    rutaCB.add(LatLng(19.208634, -96.144800));
    rutaCB.add(LatLng(19.208696, -96.144667));
    rutaCB.add(LatLng(19.208860, -96.144052));
    rutaCB.add(LatLng(19.208853, -96.143899));
    rutaCB.add(LatLng(19.208824, -96.143815));
    rutaCB.add(LatLng(19.208774, -96.143724));
    rutaCB.add(LatLng(19.208719, -96.143659));
    rutaCB.add(LatLng(19.208642, -96.143601));
    rutaCB.add(LatLng(19.208037, -96.143229));
    rutaCB.add(LatLng(19.207084, -96.142654));
    rutaCB.add(LatLng(19.206487, -96.142258));
    rutaCB.add(LatLng(19.205838, -96.141738));
    rutaCB.add(LatLng(19.204326, -96.140512));
    rutaCB.add(LatLng(19.203662, -96.140004));
    rutaCB.add(LatLng(19.202699, -96.139185));
    rutaCB.add(LatLng(19.202588, -96.139107));
    rutaCB.add(LatLng(19.202299, -96.138795));
    rutaCB.add(LatLng(19.202195, -96.138733));
    rutaCB.add(LatLng(19.201859, -96.138438));
    rutaCB.add(LatLng(19.201698, -96.138295));
    rutaCB.add(LatLng(19.201685, -96.138322));
    rutaCB.add(LatLng(19.201010, -96.139454));
    rutaCB.add(LatLng(19.200296, -96.140551));
    _points = rutaCB;
  }

  List<LatLng> puntos() {
    return _points;
  }

  void deletePoints() {
    _points = [];
  }

  get() {
    return i;
  }

  void it() {
    i = 2;
  }
}
