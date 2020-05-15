
import 'package:flutter/material.dart';
import 'package:urbanbus/pages/bloc/repository.dart';
import 'package:urbanbus/state/context.dart';


class CuentasPage extends StatefulWidget {
  
  @override
  _CuentasPageState createState() => _CuentasPageState( ) ;
}

class _CuentasPageState extends State<CuentasPage> {


 Repository repo = Repository() ;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _cuentas(),
    );
  }

  Widget _cuentas() {
    
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          cuentaBasica(),
          boton1(),
          SizedBox(
            height: 20,
          ),
          cuentaBonus(),
          boton2(),
          SizedBox(
            height: 20,
          ),
          cuentaPremimum(),
          boton3(),
        ],
      ),
    );
  }

  Widget cuentaBasica() {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.stars,
            size: 140,
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.assignment_turned_in,
                size: 30,
                color: Colors.black12,
              ),
              Icon(
                Icons.assignment_turned_in,
                size: 30,
                color: Colors.black12,
              ),
              Icon(
                Icons.assignment_turned_in,
                size: 30,
                color: Colors.black12,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text('Eliminar anuncios', style: TextStyle(fontSize: 20)),
              SizedBox(height: 11,),
              Text('Crear vista turistica', style: TextStyle(fontSize: 20)),
               SizedBox(height: 12,),
              Text('Personalizar cuenta', style: TextStyle(fontSize: 20)),
            ],
          ),
        ],
      ),
    );
  }

  Widget cuentaBonus() {
    return Container(
        child: Row(
      children: <Widget>[
        Icon(
          Icons.stars,
          size: 140,
          color: Colors.brown,
        ),
        Column(
            children: <Widget>[
              Icon(
                Icons.assignment_turned_in,
                size: 30,
                
              ),
              Icon(
                Icons.assignment_turned_in,
                size: 30,
                color: Colors.black12,
              ),
              Icon(
                Icons.assignment_turned_in,
                size: 30,
                color: Colors.black12,
              ),
            ],
          ),
           Column(
            children: <Widget>[
              Text('Eliminar anuncios', style: TextStyle(fontSize: 20)),
              SizedBox(height: 11,),
              Text('Crear vista turistica', style: TextStyle(fontSize: 20)),
               SizedBox(height: 12,),
              Text('Personalizar cuenta', style: TextStyle(fontSize: 20)),
            ],
          ),
      ],
    ));
  }

  Widget cuentaPremimum() {
    return Container(
        child: Row(
      children: <Widget>[
        Icon(
          Icons.stars,
          size: 140,
          color: Colors.yellow,
        ),
        Column(
            children: <Widget>[
              Icon(
                Icons.assignment_turned_in,
                size: 30,
                
              ),
              Icon(
                Icons.assignment_turned_in,
                size: 30,
       
              ),
              Icon(
                Icons.assignment_turned_in,
                size: 30,
         
              ),
            ],
          ),
           Column(
            children: <Widget>[
              Text('Eliminar anuncios', style: TextStyle(fontSize: 20)),
              SizedBox(height: 11,),
              Text('Crear vista turistica', style: TextStyle(fontSize: 20)),
               SizedBox(height: 12,),
              Text('Personalizar cuenta', style: TextStyle(fontSize: 20)),
            ],
          ),
      ],
    ));
  }

  Widget boton1(){
    return RaisedButton( color: Colors.black38,child: Text('Obtener cuenta') ,onPressed: (){
       setState(() {
         
          repo.cuentaBasica();
         
       });
    });
  }
   Widget boton2(){
    return RaisedButton(color: Colors.brown, child: Text('Obtener cuenta') ,onPressed: (){

       setState(() {
         repo.cuentaBonus();
         
       });
    });
  }
   Widget boton3(){
    return RaisedButton(color: Colors.yellow, child: Text('Obtener cuenta') ,onPressed: (){
      setState(() {
    repo.cuentaPrimium();
      });
      
     
    });
  }
}
