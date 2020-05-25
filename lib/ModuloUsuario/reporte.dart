
import 'package:urbanbus/ModuloServico/ruta.dart';
import 'package:urbanbus/ModuloUsuario/Usuario.dart';

class Reporte{
String _descripcion;
Usuario _usuario;
Ruta _ruta;

 set setDescripcionReporte(String descripcion) {
    this._descripcion = descripcion;
  }

  String get getDescripcionReporte => _descripcion;

   set setUsuarioReporte( Usuario usuario) {
    this._usuario = usuario;
  }

  Usuario get getUsuarioReporte => _usuario;

 set setRutaReporte(Ruta ruta) {
    this._ruta = ruta;
  }

  Ruta get getRutaReporte => _ruta;


}