import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urbanbus/pages/alert_pages.dart';
import 'package:urbanbus/pages/bloc/repository.dart';
import 'package:urbanbus/state/context.dart';
import 'package:urbanbus/state/cuentaBonus.dart';
import 'package:urbanbus/state/state_abstract.dart';

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