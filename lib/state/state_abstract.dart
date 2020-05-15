

import 'package:urbanbus/state/context.dart';

abstract class State{



  void cambiarEstado(Context context);

  int cuentaBasica(Context context);

  int cuentaBonus(Context context);

  int cuentaPremium(Context context);     

}