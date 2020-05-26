
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
                _crearTexto('Cambiar contraseña'),
                _crearPassword(),
                _crearTexto('Confirmar'),
                _crearPassword(),
                _crearTexto('Cambiar Email'),
                _crearEmail(),
                _crearTexto('Cambiar numero de telefono'),
                _crearNumeroTelefonico(),
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
  Widget _crearEmail() {
    return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 20),
      child: TextFormField(
             initialValue: 'Jorge_p@hotmail.com',
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Email addres',
          labelText: 'Email',
          suffixIcon: Icon(Icons.edit),
        ),
        onChanged: (valor) {},
      ),
    );
  }
   Widget _crearNumeroTelefonico() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 20),
      child: TextFormField(
             initialValue: '2291370546',
        cursorColor: Colors.black,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Telephone number',
          labelText: 'Número Telefónico',
          suffixIcon: Icon(Icons.edit),
        ),
        onChanged: (String valor) {
          setState(() {});
        },
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
          child: Text('Crear cuenta'),
          onPressed: () => Navigator.pop(context)),
    );
  }

}