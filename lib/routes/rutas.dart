import 'package:flutter/material.dart';
import 'package:urbanbus/pages/ayuda_page.dart';
import 'package:urbanbus/pages/configuracion_page.dart';
import 'package:urbanbus/pages/crear_cuenta_page.dart';
import 'package:urbanbus/pages/cuentas_Page.dart';
import 'package:urbanbus/pages/foro_page.dart';
import 'package:urbanbus/pages/loginPage.dart';
import 'package:urbanbus/pages/map_page.dart';
import 'package:urbanbus/pages/miPerfil_page.dart';
import 'package:urbanbus/pages/numero_page.dart';
import 'package:urbanbus/pages/terminos_page.dart';
import 'package:urbanbus/pages/verificacion_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    'logeo': (BuildContext context) => Login(),
    'map': (BuildContext context) => MapPage(),
    'crear': (BuildContext context) => CrearCuentaPage(),
    'veri': (BuildContext context) => VerificacionPage(),
    'cuentas': (BuildContext context) => CuentasPage(),
    'numero': (BuildContext context) => NumeroPage(),
    'miperfil': (BuildContext context) => MiPerfilPage(),
    'terminos': (BuildContext context) => TerminosPage(),
    'configuracion': (BuildContext context) => ConfiguracionPage(),
    'foro': (BuildContext context) => ForoPage(),
    'ayuda': (BuildContext context) => AyudaPage(),
  };
}
