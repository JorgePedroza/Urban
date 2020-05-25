import 'package:flutter/material.dart';

import 'camiones_page.dart';

class MostrarInfo extends StatefulWidget {
  final Function function1;
  MostrarInfo({Key key, this.function1}) : super(key: key);
  @override
  _MostrarInfoState createState() => _MostrarInfoState();
}

class _MostrarInfoState extends State<MostrarInfo> {
  final GlobalKey<_MostrarInfoState> _key = GlobalKey();

  double largo;
  double ancho;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    ancho = screenSize.width;
    largo = screenSize.height;
    return DraggableScrollableSheet(
      initialChildSize: 0.45,
      minChildSize: 0.05,
      maxChildSize: 1,
      builder: (BuildContext contex, scrollController) {
        return Container(
            decoration: _estiloSombreado(),
            child: ClipRRect(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: <Widget>[
                    _barraGris(),
                    SizedBox(
                      height: 20,
                    ),
                    _buscador(),
                    SizedBox(
                      height: 20,
                    ),
                    _barraDeEspacio(),
                    Container(
                        height: largo,
                        child: CamionesPage(
                          key: _key,
                          function: methodInParent,
                        )),
                  ],
                ),
              ),
            ));
      },
    );
  }

  BoxDecoration _estiloSombreado() {
    return BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 2.0),
          )
        ]);
  }

  Widget _barraGris() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 6,
      width: 70,
    );
  }

  Widget _buscador() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: largo * 0.45,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Buscar',
          suffixIcon: Icon(Icons.search),
        ),
        onTap: () {
          setState(() {});
        },
      ),
    );
  }

  Widget _barraDeEspacio() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              //
              color: Color.fromRGBO(224, 224, 224, 0.8),
              width: 1.0,
            ),
            top: BorderSide(
              //
              color: Color.fromRGBO(224, 224, 224, 0.8),
              width: 1.0,
            ),
            left: BorderSide(color: Colors.white),
            right: BorderSide(color: Colors.white)),
        color: Color.fromRGBO(224, 224, 224, 0.3),
      ),
      width: ancho,
      height: 7,
    );
  }

  methodInParent() {
    widget.function1();
  }
}
