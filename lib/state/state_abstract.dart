import 'package:flutter/cupertino.dart';
import 'package:urbanbus/state/context.dart';

abstract class Estado {


  void nivelDeCuentaBasica({Context context, BuildContext contexto});

  void nivelDeCuentaBonus({Context context, BuildContext contexto});

  void nivelDeCuentaPremium({Context context, BuildContext contexto});     

}