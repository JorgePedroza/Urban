import 'package:flutter/material.dart';

class LugaresPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Column(children: <Widget>[
  SizedBox(height: 10,),
 _cardTipo1('assets/v1.jpg', 'San Juan de Ulua', context ),
  _cardTipo1('assets/v2.jpg', 'Museo Naval', context),
   _cardTipo1('assets/v3.jpg', 'Palacio Municipal', context),
   _cardTipo1('assets/v1.jpg', 'San Juan de Ulua', context ),
  _cardTipo1('assets/v2.jpg', 'Museo Naval', context ),
   _cardTipo1('assets/v3.jpg', 'Palacio Municipal', context ),

],) ,
    );
  }
  Widget _cardTipo1(
      String assets, String titulo, BuildContext context ) {
    return Card(
      color: Colors.grey,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 150,
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(fit: BoxFit.cover, image: AssetImage(assets)),
                  )),
              Container(
                width: 180,
                child: ListTile(
                  title: Text(titulo),
                  onTap: () {
                    
                    Navigator.pushNamed(context, 'detalles');
                     
                    
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}