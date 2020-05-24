import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class ControllGoogle{

  static Completer<GoogleMapController> _controller = Completer();

get(){

return _controller;
}
}