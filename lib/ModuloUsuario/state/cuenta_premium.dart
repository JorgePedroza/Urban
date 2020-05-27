import 'package:flutter/material.dart';
import 'package:urbanbus/ModuloUsuario/state/context.dart';
import 'package:urbanbus/ModuloUsuario/state/cuentaBasica.dart';
import 'package:urbanbus/ModuloUsuario/state/state_abstract.dart';
import 'package:urbanbus/pages/alert_pages.dart';
import 'package:urbanbus/pages/bloc/repository.dart';


class CuentaPremium extends Estado{
  @override
  void nivelDeCuentaBasica({Context context, BuildContext contexto}) {
    context.setState(new CuentaBasica());
    Repository singleton = new Repository();
               singleton.estadoInicial();
    dialogoDeAlertasBasica(contexto);
  }

  @override
  void nivelDeCuentaBonus({Context context, BuildContext contexto}) {
  dialogoDeAlertaComprada(contexto);
  }

  @override
  void nivelDeCuentaPremium({Context context, BuildContext contexto}) {
    dialogoDeAlertaComprada(contexto);

  }
  
  


}