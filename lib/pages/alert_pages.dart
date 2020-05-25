import 'package:flutter/material.dart';

void dialogoDeAlertaComprada(BuildContext context,) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Ya tienes esta cuenta comprada"),
               Icon(Icons.warning, size: 200,color: Colors.red ,)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Aceptar')
              )
            ],
          );
        });
  }

void dialogoDeAlertasPremiumWarning(BuildContext context,) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Primero obten tu cuenta Bonus'),
               Icon(Icons.warning, size: 200,color: Colors.red,)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Aceptar')
              )
            ],
          );
        });
  }

void dialogoDeAlertasPremium(BuildContext context,) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Subiste dee nivel a cuenta Premium'),
               Icon(Icons.stars, size: 200,color: Colors.yellow,)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Aceptar')
              )
            ],
          );
        });
  }
  void dialogoDeAlertasBonus(BuildContext context,) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Subiste de nivel a cuenta Bonus'),
               Icon(Icons.stars, size: 200,color: Colors.brown ,)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Aceptar')
              )
            ],
          );
        });
  }
  void dialogoDeAlertasBasica(BuildContext context,) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Cuenta Basica'),
               Icon(Icons.stars, size: 200,color: Colors.black ,)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Aceptar')
              )
            ],
          );
        });
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
                onPressed: ()=> Navigator.of(context).pop(),
                 child: Text('Aceptar')
              )
            ],
          );
        });


        
  }

  
