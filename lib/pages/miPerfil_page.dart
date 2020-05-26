
import 'package:flutter/material.dart';

class MiPerfilPage  extends StatefulWidget {

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<MiPerfilPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mi perfil',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
              child: Column(
         
              children: <Widget>[
                
                Icon(
                  Icons.account_circle,
                  size: 140,
                ),
                _crearTexto('Nombre del perfil'),
                _pedirNombre(),
                Divider(color: Colors.black54,),
                _textoFijo('Edad: ','21'),
                Divider(color: Colors.black54),
                _textoFijo('Nombre : ', 'Jorge Antonio pedroza Rendon'),
                Divider(color: Colors.black54),
                _textoFijo('Fecha de nacimiento: ', '17/02/1999'),
                Divider(color: Colors.black54),
                _crearTexto('Leyenda'),
                _leyenda(),
                _crearTexto('Cambiar contraseña'),
                _crearPassword(),
                _crearTexto('Confirmar'),
                _crearPassword(),
                Divider(color: Colors.black,),
                
                _crearTexto('Confirmar cambios'),
                _confirmarCambios(),
                _crearBoton(context)

              ],
            ),
      ),
        
      
    );
  }

  Widget _pedirNombre() {
    return Container(

        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 20),
          child:
          TextFormField(
             initialValue: 'Jorge P.',
            cursorColor: Colors.white,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              labelText: 'Nombre/s',
              suffixIcon: Icon(Icons.edit),
            ),
            onChanged: (valor) {
            setState(() {
              valor = 'd';           });
              
            },
          ),
        ));
  
}
Widget _crearPassword() {
    return Container(
      child: Padding(
       padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 20),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: 'Contraseña',
            labelText: 'password',
            suffixIcon: Icon(Icons.edit),
          ),
          onChanged: (valor) {},
        ),
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
  
   
  Widget _confirmarCambios() {
    return Container(
      child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 20),
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
  Widget _crearBoton(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton(
          child: Text('Confirmar'),
          onPressed: () => Navigator.pop(context)),
    );
  }
Widget _textoFijo(String categoria,String respuesta){

return Container(
  child:   Padding(
       padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 20),
    child: Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: categoria,
            style: TextStyle(fontSize: 15, color: Colors.black),
            children: <TextSpan>[
              TextSpan(text: respuesta, style: TextStyle(fontWeight: FontWeight.bold)),
        
            ],
          ),
        ),
      ],
    ),
  ),
);
}
Widget _leyenda() {
    return Padding(
       padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 20),
        child: TextFormField(
           keyboardType: TextInputType.text,
             initialValue: "Chale no puedo salir 🥺🥺😭",
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 70.0),
            
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            labelText: 'Comenta algo que los demas puedan ver',
            suffixIcon: Icon(Icons.edit),
          ),
          onChanged: (valor) {
           print(valor);
          },
        ),
    );
  }
}