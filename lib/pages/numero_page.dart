import 'package:flutter/material.dart';

class NumeroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
           SizedBox(height: 100,),
          _crearTexto('Ingresa tu número telefónico o email',20),
          SizedBox(height: 10,),
          _crearNumeros(),
           SizedBox(height: 10,),
           _crearTexto('Para poder recuperar tu cuenta sera necesario proporcionar '+'\n'+'el numero telefónico o email asociada a ella.',12),
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
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: '**********'       
        ),
        onChanged: (valor) {},
      ),
    );
  }
   Widget _crearBoton(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton(
          child: Text('Verificar número'),
          onPressed: () => Navigator.pushNamed(context, 'veri')),
    );
  }
}
