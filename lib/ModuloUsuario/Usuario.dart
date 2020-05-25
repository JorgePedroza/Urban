class Usuario {
  int _id;
  String _nombre;
  String _password;
  String _telefono;
  String _email;
  String _tipo;


 set setIdUsuario(int id) {
    this._id = id;
  }

  int get getIdUsuario => _id;


 set setNombreUsuario(String nombre) {
    this._nombre = nombre;
  }

   String get getNombreUsuario => _nombre;

 set setTelefonoUsuario(String telefono) {
    this._telefono = telefono;
  }

   String get getTelefonoUsuario => _telefono;


  set setPasswordUsuario(String password) {
    this._password= password;
  }

   String get getPasswordUsuario => _password;

  set setEmailUsuario(String email) {
    this._email = email;
  }

   String get getEmailUsuario => _email;


 set setTipoUsuario(String tipo) {
    this._tipo= tipo;
  }

   String get getTipoUsuario => _tipo;



}
