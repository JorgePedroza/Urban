import 'package:flutter/material.dart';

class DetallesLugarPage extends StatelessWidget {


  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
   final estiloSub = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
 

return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(context),
            _crearTitulo(),
            _crearTexto(),
          ],
        ),
      )
    );
  }
  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'scroll'),
        child: Image.asset('assets/v1.jpg',fit: BoxFit.cover,),
         
        ),
      
    );
  }

  Widget _crearTitulo() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('San Juan de Ulua', style: estiloTitulo),
                  SizedBox( height: 7.0 ),
                  Text('Veracruz', style: estiloSub ),
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.red, size: 30.0 ),
            Text('41', style: TextStyle( fontSize: 20.0 ) )

          ],
        ),
      ),
    );
  }

  

 

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text(
          'San Juan de Ulúa es el nombre de una pequeña isla de México en la que se ubica la antigua fortaleza y el otrora puerto (también del mismo nombre). La construcción de la fortaleza fue planeada por los españoles al mando de Hernán Cortés el 22 de abril de 1519 en el contexto del descubrimiento de América y de los ataques piratas y corsarios de la época contra España. \n \n La fortaleza esta construida en el estilo llamado traza italiana. El complejo e isla se hallan frente a las costas del golfo de México en la ciudad y puerto de Veracruz, en el estado mexicano del mismo nombre. Su nombre original era Chalchicueyecan o Chalchichuecan. \n\n El 8 de abril de 1518 el capitán Juan de Grijalva, comandaba la segunda expedición de adelantamiento enviada desde la isla Fernandina (Ecuador) por Diego Velázquez, Gobernador de esta isla y que había recibido título de adelantado para esta región. Como todos, este adelantamiento incluía el descubrimiento, la exploración, la viabilidad de fundación de nuevas poblaciones, la reducción de la barbarie cultural, la conquista y naturalmente la búsqueda de oro.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}
