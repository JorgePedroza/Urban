import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urbanbus/ModuloUsuario/state/context.dart';
import 'package:urbanbus/ModuloUsuario/state/cuentaBonus.dart';
import 'package:urbanbus/ModuloUsuario/state/state_abstract.dart';
import 'package:urbanbus/pages/alert_pages.dart';
import 'package:urbanbus/pages/bloc/repository.dart';


class CuentaBasica extends Estado{
  @override
  void nivelDeCuentaBasica({Context context, BuildContext contexto}) {
      dialogoDeAlertaComprada(contexto);
  }

  @override
  void nivelDeCuentaBonus({Context context, BuildContext contexto}) {
    context.setState(new CuentaBonus());
   Repository singleton = Repository();
              singleton.quitarPublicidad();
     dialogoDeAlertasBonus(contexto);
  }

  @override
  void nivelDeCuentaPremium({Context context, BuildContext contexto}) {
      dialogoDeAlertasPremiumWarning(contexto);
  }






}