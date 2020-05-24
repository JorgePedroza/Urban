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
          SizedBox(
            height: 20,
          ),
          Text(
            "Mi perfil",
            style: TextStyle(fontSize: 28),
            
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Cuenta",
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Privcidad",
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Configuracion",
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Ayuda",
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "$per",
            style: TextStyle(fontSize: 28, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
