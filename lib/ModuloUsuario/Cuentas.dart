
import 'package:urbanbus/AccesoDatos/UsuarioDAO.dart';
import 'package:urbanbus/Model/Usuario.dart';

class Cuenta {
  Usuario usuario = Usuario();
  UsuarioDAO usuarioDAO = UsuarioDAO();
  Usuario get getUsuario {
    return usuario;
  }
 bool iniciarSesion(String telefono, String password){
   Usuario usu = Usuario();
usu.setTelefonoUsuario = telefono;
usu.setPasswordUsuario = password; 
   this.usuario = usuarioDAO.buscar(usu);
    if(usu.password != this.usuario.password){
      return false;
    }else{
      return true;
    }
 }

}
