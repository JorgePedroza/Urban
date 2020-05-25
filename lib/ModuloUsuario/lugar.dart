class Lugar{
List<double> _coordenadas;
String  _descripcion;

  set setCoordenadasLugar(List<double> coordenadas) {
    this._coordenadas = coordenadas;
  }

  List<double> get getCoordenadasLugar => _coordenadas;
    set set(List<double> coordenadas) {
    this._coordenadas = coordenadas;
  }

  set setDescripcionLugar(String descripcion) {
    this._descripcion = descripcion;
  }
  
  String get getDescripcionLugar => _descripcion;


}