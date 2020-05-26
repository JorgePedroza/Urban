import 'package:flutter/material.dart';
import 'package:urbanbus/pages/bloc/repository.dart';
import 'package:urbanbus/pages/card_Page.dart';
import 'package:urbanbus/pages/descripcion_lugar_page.dart';
import 'package:urbanbus/pages/lugares_page.dart';


class CamionesPage extends StatefulWidget {
  final Function function;

  CamionesPage({Key key, this.function }) : super(key: key);

  @override
  _CamionesPageState createState() => _CamionesPageState();
}

class _CamionesPageState extends State<CamionesPage> {
  final GlobalKey<_CamionesPageState> _key = GlobalKey();
  Repository repo = Repository();
  static int paginaActual;
 static int i = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> f = new List();

    List<Widget> _tap() {
      f.add(
        
        Tab(icon: Icon(Icons.directions_bus)));
      if (repo.get() == 3) {
        
        i = 2;
        f.add(Tab(
            icon: Icon(
          Icons.not_listed_location,
          color: Colors.yellow,
        )));
      } else {
        paginaActual = 0;
        i = 1;
      }
      return f;
    }

    return DefaultTabController(
      length: i,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            flexibleSpace: Container(
              color: Colors.blueGrey,
            ),
            automaticallyImplyLeading: false,
            bottom: TabBar(tabs: _tap(),onTap: (i){
              setState(() {
                 paginaActual = i;
              });
             
            },),
          ),
        ),
        body: _callPage(paginaActual),
      ),
    );
  }
 Widget _callPage( int paginaActual ) {
setState(() {
  
});
    switch( paginaActual ) {

      case 0: return CardPage(
          key: _key,
          function: methodInParent,
        );
      case 1: return LugaresPage();

      case 2: return DetallesLugarPage();


      default:
        return CardPage(
          key: _key,
          function: methodInParent,
        );
    }
    

  }
  methodInParent() {
    print('hola');
    widget.function();
  }

    
  
  
}
