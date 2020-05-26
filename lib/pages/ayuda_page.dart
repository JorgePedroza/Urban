import 'package:flutter/material.dart';


class AyudaPage extends StatefulWidget {
  AyudaPage({Key key}) : super(key: key);

  @override
  _AyudaPageState createState() => _AyudaPageState();
}

class _AyudaPageState extends State<AyudaPage> {


  List<Item> _data = generateItems(5);
  

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Ayuda'),
    ),
      body: SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    ),
  );
}

Widget _buildPanel() {
  return ExpansionPanelList(
    expansionCallback: (int index, bool isExpanded) {
      setState(() {
        _data[index].isExpanded = !isExpanded;
      });
    },
    children: _data.map<ExpansionPanel>((Item item) {
      return ExpansionPanel(
        headerBuilder: (BuildContext context, bool isExpanded) {
          return ListTile(
            title: Text(item.headerValue),
          );
        },
        body: Column(
          children: <Widget>[
            Image.asset(item.expandedValue)
          ],
        ),
        isExpanded: item.isExpanded,
      );
    }).toList(),
  );
}
}
class Item {
  
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  String nombre = '';
  String ruta = '';
  return List.generate(numberOfItems, (int index) {
    switch (index){
      case 0 : nombre = 'Buscar ruta'; ruta = 'assets/video1.gif';  break;
      case 1 : nombre = 'Cambiar contraseña'; ruta = 'assets/video2.gif'; break;
      case 2 : nombre = 'comprar Cuenta Premium'; ruta = 'assets/video3.gif'; break;
      case 3 : nombre = 'Foro'; ruta = 'assets/video4.gif'; break;
      case 4 : nombre = 'Actualiza tu perfil';  ruta = 'assets/video5.gif';break;
    }
    return Item(
      headerValue: '$nombre ',
      expandedValue: '$ruta',
    );
  });
}