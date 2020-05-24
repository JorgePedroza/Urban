
import 'package:flutter/material.dart';
import 'package:urbanbus/pages/crear_cuenta_page.dart';
import 'package:urbanbus/pages/cuentas_Page.dart';
import 'package:urbanbus/pages/home_page.dart';
import 'package:urbanbus/pages/map_google.dart';
import 'package:urbanbus/pages/map_page.dart';
import 'package:urbanbus/pages/verificacion_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return  <String, WidgetBuilder>{
       'logeo': (BuildContext context) => Login(),
         'map': (BuildContext context) => MapPage(),
       'crear': (BuildContext context) => CrearCuentaPage(),
        'veri':  (BuildContext context)=> VerificacionPage(),
      'google': (BuildContext context) => MapSample(),
     'cuentas': (BuildContext context) => CuentasPage(),
  };
}