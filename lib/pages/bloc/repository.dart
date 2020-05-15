import 'package:urbanbus/state/context.dart';

class Repository{
  int _count = 1;

static Repository _instance = Repository._internal();

Repository._internal();

factory Repository(){
  return _instance;
}

int get(){
  return _count;
  }
 void cuentaBasica(){
  Context context= new Context();

 _count = context.cuentaBasica();
  
}
void cuentaBonus(){
  Context context= new Context();

  context.camibiarCuenta();
  _count= context.cuentaBonus();
  
}
void cuentaPrimium(){
  Context context= new Context();

  context.camibiarCuenta();
  context.camibiarCuenta();
  _count= context.cuentaPremium();
  
 
}



}