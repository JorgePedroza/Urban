import 'package:flutter/material.dart';
import 'package:urbanbus/pages/bloc/repository.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
 Repository repo = Repository();
  String estado = 'Basica';
  String per;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child: ListView(children: <Widget>[
        perfil(),
        SizedBox(
          height: 40,
        ),
        Divider(
          color: Colors.black,
        ),
        informacion()
      ])),
    );
  }

  Widget perfil() {
   switch (repo.get()) {
      case 1:
        estado = 'Basico';
        per = ' ';
        break;
      case 2:
        estado = 'Bonus';
        per = ' ';
        break;
      case 3:
        estado = 'Premium';
        per = 'Perzonalizar';
        break;
    }
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.account_circle,
            size: 140,
          ),
          Text(
            'Jorge P. ( $estado )',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget informacion() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 35,),
          FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'miperfil'),
        child:
         Row(
           children: <Widget>[
            SizedBox(width: 43,),
             Icon(Icons.accessibility_new,size: 40,),
                SizedBox(width: 10,),
             Text('Mi perfil', style: TextStyle( fontSize: 35,),),
           ],
         )),
         SizedBox(height: 35,),
         FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'terminos'),
        child:
         Row(
           children: <Widget>[
            SizedBox(width: 38,),
             Icon(Icons.account_balance_wallet ,size: 40,),
                SizedBox(width: 10,),
             Text('Terminos', style: TextStyle( fontSize: 35,),),
           ],
         )),
         SizedBox(height: 35,),
          FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'configuracion'),
        child:
         Row(
           children: <Widget>[
            SizedBox(width: 10,),
             Icon(Icons.build,size: 30,),
                SizedBox(width: 10,),
             Text('Configuracion', style: TextStyle( fontSize: 35,),),
           ],
         )),
         SizedBox(height: 35),
         FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'foro'),
        child:
         Row(
           children: <Widget>[
            SizedBox(width: 80,),
             Icon(Icons.chat,size: 30,),
                SizedBox(width: 10,),
             Text('Foro', style: TextStyle( fontSize: 35,),),
           ],
         )),
         SizedBox(height: 35,),
          FlatButton(
        onPressed: () => Navigator.pushNamed(context, 'ayuda'),
        child:
         Row(
           children: <Widget>[
            SizedBox(width: 65,),
             Icon(Icons.help_outline,size: 30,),
                SizedBox(width: 10,),
             Text('Ayuda', style: TextStyle( fontSize: 35,),),
           ],
         )),
          
        
          Text(
            "$per",
            style: TextStyle(fontSize: 28, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
