import 'package:flutter/cupertino.dart';
import 'package:urbanbus/state/cuentaBasica.dart';
import 'package:urbanbus/state/state_abstract.dart';

class Context {
  Estado _state;

  Context() {
    this.setState(new CuentaBasica());
  }
 void setState(Estado state, ) {
    _state = state;
  }

 void  cambiarAcuentaBasica(BuildContext contexto) {
  _state.nivelDeCuentaBasica(context: this, contexto: contexto);  
  }

 void  cambiarAcuentaBonus(BuildContext contexto) {
  _state.nivelDeCuentaBonus(context: this, contexto: contexto);
  }

 void  cambiarAcuentaPremium(BuildContext contexto) {
   _state.nivelDeCuentaPremium(context: this, contexto: contexto);
  }
}
