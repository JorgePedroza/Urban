import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1('assets/images.jpeg', 'Vergel chiveria', 'Azul',Colors.blue),
          _cardTipo1('assets/ima1.jpeg', 'Bajadas', 'Azul',Colors.blue),
          _cardTipo1('assets/ima2.jpeg', 'Reserva 1', 'verde', Colors.green),
          _cardTipo1('assets/ima3.jpg', 'Amapolas', 'Blanco/amarillo', Colors.yellow),
          _cardTipo1('assets/ima4.jpg', 'Bolivar', 'Rojo', Colors.red),
          _cardTipo1('assets/ima5.jpeg', 'santa fe', 'verde', Colors.green),
          _cardTipo1('assets/images.jpeg', 'Vergel chiveria', 'Azul',Colors.blue),
          _cardTipo1('assets/ima1.jpeg', 'Bajadas', 'Azul',Colors.blue),
          _cardTipo1('assets/ima3.jpg', 'Amapolas', 'Blanco/amarillo', Colors.yellow),
          _cardTipo1('assets/images.jpeg', 'Vergel chiveria', 'Azul',Colors.blue),
          _cardTipo1('assets/ima4.jpg', 'Bolivar', 'Rojo', Colors.red),
          _cardTipo1('assets/ima3.jpg', 'Amapolas', 'Blanco/amarillo', Colors.yellow),
        ],
      ),
    );
  }

  Widget _cardTipo1(String assets, String titulo, String color,Color colorfondo ) {
    return Card(
      color: colorfondo,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),


              Container(
                width: 100,
                height: 60,
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(assets)),
              )),


              Container(
                width: 180,
                child: ListTile(
                  title: Text(titulo),
                  subtitle: Text('Color dominante:$color'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
