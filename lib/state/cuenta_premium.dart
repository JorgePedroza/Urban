

import 'package:urbanbus/state/context.dart';
import 'package:urbanbus/state/cuentaBasica.dart';
import 'package:urbanbus/state/state_abstract.dart';

class CuentaPremium extends State{

  @override
  int cuentaBasica(Context context) {
    
  return 0;  
  }

  @override
  int cuentaBonus(Context context) {
    return 0;

  }

  @override
 int cuentaPremium(Context context) {
    return 3;
  }

  @override
  void cambiarEstado(Context context) {
    context.setState(new CuentaBasica());
  }


}