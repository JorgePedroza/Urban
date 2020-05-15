


import 'package:urbanbus/state/context.dart';
import 'package:urbanbus/state/cuenta_premium.dart';
import 'package:urbanbus/state/state_abstract.dart';

class CuentaBonus extends State{
  @override
  int cuentaBasica(Context context) {
   return 0;
  }

 
  @override
  int cuentaBonus(Context context) {
  return 2;
  }

  @override
  int cuentaPremium(Context context) {
return 0;
  }

  @override
  void cambiarEstado(Context context) {
    context.setState(new CuentaPremium());
  }

    

}