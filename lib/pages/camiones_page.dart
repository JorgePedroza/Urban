import 'package:flutter/material.dart';
import 'package:urbanbus/pages/bloc/repository.dart';
import 'package:urbanbus/pages/card_Page.dart';


class CamionesPage extends StatefulWidget {
  @override
  _CamionesPageState createState() => _CamionesPageState();

}

class _CamionesPageState extends State<CamionesPage> {

 Repository repo = Repository() ;
 
    int i = 1;
  
   
  @override
  Widget build(BuildContext context) {
  
      
    List<Widget> f = new List();
   
    List<Widget> _tap() {

       f.add(Tab(icon: Icon(Icons.directions_bus)));
       
      if(repo.get()==3){
        i=2;
        f.add(Tab(icon: Icon(Icons.not_listed_location,color: Colors.yellow,)));
      }else{
        i=1;
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
            bottom: TabBar(tabs: _tap()),
          ),
        ),
        body: CardPage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      ),
    );
  }
  
}
