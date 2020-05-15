


import 'package:urbanbus/state/context.dart';
import 'package:urbanbus/state/cuentaBonus.dart';
import 'package:urbanbus/state/state_abstract.dart';

class CuentaBasica extends State{
  @override
  int cuentaBasica(Context context) {
   return 1;
  }

 
  @override
  int cuentaBonus(Context context) {
  return 0;
  }

  @override
  int cuentaPremium(Context context) {
return 0;
  }

  @override
  void cambiarEstado(Context context) {
    context.setState(new CuentaBonus());
  }

    

}