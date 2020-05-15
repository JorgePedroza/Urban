import 'package:urbanbus/state/cuentaBasica.dart';
import 'package:urbanbus/state/state_abstract.dart';

class Context {

State state;  

      Context(){
        this.setState(new CuentaBasica());
      }

    setState (State sta){
       state = sta;
    }
   int cuentaBasica(){
   return  state.cuentaBasica(this);
   }
   int cuentaBonus(){
    return state.cuentaBonus(this);
   }
   int cuentaPremium(){
     return state.cuentaPremium(this);
   }
   void camibiarCuenta(){
     state.cambiarEstado(this);
   }

}