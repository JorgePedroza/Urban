import 'package:flutter/material.dart';
import 'package:urbanbus/pages/alert_pages.dart';

class CrearCuentaPage extends StatefulWidget {
  @override
  _CrearCuenta createState() => _CrearCuenta();
}

class _CrearCuenta extends State<CrearCuentaPage> {
  bool _terminos = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crea una cuenta'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                _crearTexto("Nombre y apelidos"),
                SizedBox(
                  height: 5,
                ),
                _pedirNombre(),
                SizedBox(
                  height: 20,
                ),
                _crearTexto("Numero Telefonico"),
                SizedBox(
                  height: 5,
                ),
                _crearNumeroTelefonico(),
                SizedBox(
                  height: 20,
                ),
                _crearTexto("Correo electronico"),
                SizedBox(
                  height: 5,
                ),
                _crearEmail(),
                SizedBox(
                  height: 20,
                ),
                _crearTexto("Contraseña"),
                SizedBox(
                  height: 5,
                ),
                _crearPassword(),
                SizedBox(
                  height: 20,
                ),
                _crearTexto("Confirmar contraseña"),
                SizedBox(
                  height: 5,
                ),
                _crearPassword(),
                SizedBox(
                  height: 20,
                ),
                _crearTexto("Fecha de nacimiento"),
                SizedBox(
                  height: 5,
                ),
                _crearFecha(),
                SizedBox(
                  height: 20,
                ),
                _crearTerminos(context),
                SizedBox(
                  height: 20,
                ),
                _crearBoton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _pedirNombre() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: TextField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            labelText: 'Nombre/s',
            suffixIcon: Icon(Icons.person_pin),
          ),
          onChanged: (valor) {},
        ),
      ),
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
        ),
        onChanged: (String valor) {
          setState(() {});
        },
      ),
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
        ),
        onChanged: (valor) {},
      ),
    );
  }

  Widget _crearTexto(String s) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 18,
          ),
          Text(
            s,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _crearPassword() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: 'Contraseña',
            labelText: 'password',
            suffixIcon: Icon(Icons.no_encryption),
          ),
          onChanged: (valor) {},
        ),
      ),
    );
  }

  Widget _crearFecha() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        cursorColor: Colors.white,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: '',
          labelText: 'Date',
          suffixIcon: Icon(Icons.calendar_today),
        ),
        onChanged: (valor) {},
      ),
    );
  }

  Widget _crearTerminos(BuildContext context) {
    return Stack(
      children: <Widget>[
        
        CheckboxListTile(
          title: Text(
              'Al crear esta cuenta esta aceptando los \n                                            de la empresa UrbanBus.'),
          value: _terminos,
          onChanged: (bool value) {
            setState(() {
              _terminos = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4 ),
          child: FlatButton(
                    onPressed: () {alertaDeContrato(context);
                    
                    },
                    child: Text('Terminos y Condiciones',style: TextStyle(fontSize: 16),)),
        ),
      ],
    );
  }

  Widget _crearBoton(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton(
          child: Text('Crear cuenta'),
          onPressed: () => Navigator.pushNamed(context, 'veri')),
    );
  }


  void alertaDeContrato(BuildContext context,) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            content: Column(
              children: <Widget>[
                Text('Contrato UrbanBus'),
              
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: (){Navigator.of(context).pop();
                
                setState(() {
                  _terminos=true;
                });},
                 child: Text('Aceptar')
              )
            ],
          );
        });
  }
}
