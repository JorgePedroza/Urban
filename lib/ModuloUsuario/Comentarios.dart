

import 'package:urbanbus/ModuloUsuario/Usuario.dart';

class Comentarios{
String _descripcion;
Usuario _usuario;
String _fecha;

 set setDescripcionComentarios(String descripcion) {
    this._descripcion = descripcion;
  }

  String get getDescripcionComentarios => _descripcion;

   set setUsuarioComentarios(Usuario usuario) {
    this._usuario = usuario;
  }

  Usuario get getUsuarioComentarios => _usuario;

 set setFechaComentarios(String fecha) {
    this._fecha = fecha;
  }

  String get getFechaComentarios => _fecha;


}