class Ruta{
int _id;
String _nombre;
double _ruta;
String _recorrido;
String _imagen;

 set setIdRuta(int id) {
    this._id = id;
  }

  int get getIdRuta => _id;

 set setNombreRuta(String nombre) {
    this._nombre = nombre;
  }

   String get getNombreRuta => _nombre;

 set setRutaRuta(double ruta) {
    this._ruta = ruta;
  }

  double get getRutaRuta => _ruta;

  set setRecorridoRuta(String recorrido) {
    this._recorrido = recorrido;
  }

  String get getRecorridoRuta => _recorrido;


 set setImagenRuta(String imagen) {
    this._imagen = imagen;
  }

 String get getImagenRuta => _imagen;


}