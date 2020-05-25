import 'package:flutter/material.dart';
import 'package:urbanbus/ModuloUsuario/Cuentas.dart';

class Login extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {
  final key = new GlobalKey<ScaffoldState>();
  String password;
  String telefono;
  double largo;
  double ancho;

  final backGroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    ancho = screenSize.width;
    largo = screenSize.height;

    return Scaffold(
      key: key,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: _decoracion(),
        width: ancho,
        height: largo,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _salto(largo * 0.15),
              _crearIcono(),
              _crearTitulo(),
              _salto(largo * 0.02),
              _crearEmail(),
              _salto(largo * 0.02),
              _crearPassword(key),
              _salto(largo * 0.2),
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
      color: Colors.blueAccent,
    );
  }

  Widget _crearTitulo() {
    return Text(
      'UrbanBus',
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }

  Widget _crearEmail() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: 'Email addres',
            labelText: 'Email',
            suffixIcon: Icon(Icons.alternate_email),
            icon: Icon(
              Icons.email,
              color: Colors.black,
            )),
        onChanged: (String valor) {
          setState(() {
            telefono = valor;
          });
        },
      ),
    );
  }

  Widget _crearPassword(key) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Contraseña',
                labelText: 'password',
                suffixIcon: Icon(Icons.no_encryption),
                icon: Icon(
                  Icons.lock,
                  color: Colors.black,
                )),
            onChanged: (valor) {
              setState(() {
                password = valor;
              });
            },
          ),
        ),
        _salto(40),
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: RaisedButton(
              onPressed: () {
                Cuenta cuenta = Cuenta();

                if (cuenta.iniciarSesion(telefono, password)) {
                  Navigator.pushNamed(context, 'map');
                } else {
                  key.currentState.showSnackBar(SnackBar(
                      content: new Text(
                          "Numero de telefono o la contraseña son incorrectos")));
                }
              },
              child: Text(
                  '                    Iniciar sesion                    ')),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        FlatButton(
            onPressed: () => Navigator.pushNamed(context, 'veri'),
            //()=> Navigator.of(context).pop(),
            child: Text('¿Olvidaste tu contraseña?')),
      ],
    );
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
                  //()=> Navigator.of(context).pop(),
                  child: Text('Crear cuenta')),
            ],
          )
        ],
      ),
    );
  }

  Widget _salto(double espacio) {
    return Container(
      padding: EdgeInsets.only(top: espacio),
    );
  }
}
