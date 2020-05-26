import 'package:flutter/material.dart';
 

 class ConfiguracionPage extends StatefulWidget {
   @override
   _ConfiguracionPageState createState() => _ConfiguracionPageState();
 }
 
 class _ConfiguracionPageState extends State<ConfiguracionPage> {
  



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('Configuracion de la cuenta'),),
      
     body: Column(
      
       children: <Widget>[
         _crearTextoTitulo('Preferencias'),
         _preferenciaState(context, 'Recordar usuario', true),
         _preferenciaState(context, 'Preguntar antes de abrir el GPS', false),
         Divider(color: Colors.black54,),
         _crearTextoTitulo('Actualizar cuenta'),
          _crearTexto('Cambiar Email'),
                _crearEmail(),
         _crearTexto('Cambiar numero telefonico'),
         _crearNumeroTelefonico(),
         Divider(color: Colors.black,),
         _crearTexto('Confirmar cambios'),
         _confirmarCambios(),
         _crearBoton(context)

     ],),

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
          child: Text('Crear Confirmar'),
          onPressed: () => Navigator.pop(context)),
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
          
        },
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
   Widget _preferenciaState(BuildContext context, String text, bool u) {
    
    return 
        CheckboxListTile(
          title: Text(text, style: TextStyle(fontSize: 20),),
          value: u,
          onChanged: (bool value) {
            setState(() {
             u= value;
            });
          }
    );
  }
   Widget _crearTextoTitulo(String s) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 12,
            ),
            Text(
              s,
              style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}