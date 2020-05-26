import 'package:flutter/material.dart';
import 'package:urbanbus/ModuloUsuario/Cuentas.dart';

class Login extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {
  final key = new GlobalKey<ScaffoldState>();
  final backGroundColor = Colors.white;
  String _password;
  String _telefono;
  double _largo;
  double _ancho;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _ancho = screenSize.width;
    _largo = screenSize.height;

    return Scaffold(
      key: key,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: _decoracion(),
        width: _ancho,
        height: _largo,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _rellenarEspacio(_largo * 0.15),
              _crearIcono(),
              _crearTitulo(),
              _rellenarEspacio(_largo * 0.02),
              _crearNumeroTelefonico(),
              _rellenarEspacio(_largo * 0.02),
              _crearPassword(key),
             _rellenarEspacio(_largo * 0.04),
              _creariniciarSesion(),
              _crearOlvidasteTuContrasena(),
              _rellenarEspacio(_largo * 0.22),
              _crearCuenta(context)
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _decoracion() {
    return BoxDecoration(
        gradient: LinearGradient(
            stops: [0.3, 0.7, 0.9],
            begin: FractionalOffset.topRight,
            end: FractionalOffset.bottomLeft,
            colors: [
              Color.fromRGBO(28, 75, 88, 1),
              Color.fromRGBO(54, 148, 174, 1),
              Colors.white
            ]));
  }

  Widget _crearIcono() {
    return Icon(
      Icons.location_on,
      size: 100,
      color: Color.fromRGBO(42, 129, 194, 1),
    );
  }

  Widget _crearTitulo() {
    return Text(
      'UrbanBus',
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }

  Widget _crearNumeroTelefonico() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: 'Telephone number',
            labelText: 'Número Telefónico',
            suffixIcon: Icon(Icons.phone_iphone),
            icon: Icon(
              Icons.phone,
              color: Colors.black,
            )),
        onChanged: (String valor) {
          setState(() {
            _telefono = valor;
          });
        },
      ),
    );
  }

  Widget _crearPassword(key) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        obscureText: true,
        cursorColor: Colors.black,
        decoration: InputDecoration(

            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: 'Password',
            labelText: 'Contraseña',
            suffixIcon: Icon(Icons.no_encryption),
            icon: Icon(
              Icons.lock,
              color: Colors.black,
            )),
        onChanged: (valor) {
          setState(() {
            _password = valor;
          });
        },
      ),
    );
  }

  Widget _creariniciarSesion() {
    return Container(
      width: 240,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: RaisedButton(
          child:Text('Iniciar sesión'),
            onPressed: () {
              Cuenta cuenta = Cuenta();
              FocusScopeNode currentFocus = FocusScope.of(context);
              currentFocus.unfocus();
              if (cuenta.iniciarSesion(_telefono, _password)) {
                Navigator.pushNamed(context, 'map');
              } else {
                key.currentState.showSnackBar(
                SnackBar(
                content: new Text("Número de teléfono o contraseña son incorrectas.")));
              }
            },),
      ),
    );
  }

  Widget _crearOlvidasteTuContrasena() {
    return FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'numero'),
        child: Text('¿Olvidaste tu contraseña?'));
  }

  Widget _crearCuenta(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('¿Aun no tienes una cuenta?'),
              FlatButton(
                  onPressed: () => Navigator.pushNamed(context, 'crear'),
                  child: Text('Crear cuenta')),
            ],
          )
        ],
      ),
    );
  }

  Widget _rellenarEspacio(double espacio) {
    return Container(
      padding: EdgeInsets.only(top: espacio),
    );
  }
}
