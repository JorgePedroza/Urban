
import 'package:flutter/material.dart';

class VerificacionPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
           SizedBox(height: 100,),
          _crearTexto('Ingresa el codigo de verificacion',20),
          SizedBox(height: 10,),
          _crearNumeros(),
           SizedBox(height: 10,),
           _crearTexto('Te hemos enviado con codigo de verificacion en tu email.',12),
          SizedBox(height: 20,),
          _crearBoton(context),

        ],
      ),
    );
}
Widget _crearTexto(String s, double i) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 18,
          ),
          Text(
            s,
            style: TextStyle(fontSize: i),
          ),
        ],
      ),
    );
  }
  Widget _crearNumeros() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        cursorColor: Colors.white,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Email addres',
          labelText: 'Codigo de verificacion',
         
         
        ),
        onChanged: (valor) {},
      ),
    );
  }
   Widget _crearBoton(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton(
          child: Text('Verificar'),
          onPressed: () => Navigator.pushNamed(context, 'logeo')),
    );
  }
}