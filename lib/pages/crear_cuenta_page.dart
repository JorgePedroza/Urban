import 'package:flutter/material.dart';

class CrearCuentaPage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crea una cuenta'),
      ),
      body: Container(
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
              _crearTerminos(),
              SizedBox(
                height: 20,
              ),
              _crearBoton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pedirNombre() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Nombre/s',
                ),
                onChanged: (valor) {},
              ),
            ),
            Flexible(
              child: TextField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Apellidos',
                ),
                onChanged: (valor) {},
              ),
            ),
          ],
        ),
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

  Widget _crearTerminos() {
    return CheckboxListTile(
      title: Text(
          'Al crear esta cuenta esta aceptando los terminos y condiciones de la empresa UrbanBus.'),
      value: false,
      onChanged: (bool value) {},
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
}
