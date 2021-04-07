import 'package:asyste/bloc/login/bloc/login_bloc.dart';
import 'package:asyste/model/User.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginLogic{
  Stream<LoginState> loginIn({@required String email, @required String password});
  Stream<LoginState> loginRegistrer({@required String email, @required String password});
  Stream<LoginState> loginRecovery({@required String email});
  
}

class LoginLogicInit implements LoginLogic{
  @override
  Stream<LoginState> loginIn({String email, String password}) async*{
    try {
      yield Loginloadingstate(msg: "validando información");
      if(email == "daniel" && password == "123"){
        yield Loginsucessstate(res: true);
      }else if(email == "jeison" && password == "123"){
        yield Loginsucessstate(res: true);
      }else if(email == "admin" && password == "123"){
        yield Loginsucessstate(res: true);
      }else{
        yield Loginfailedstate(msg: "Verifique sus datos");
      }
    } catch (e) {
        yield Loginfailedstate(msg: e);
    }
  }

  @override
  Stream<LoginState> loginRegistrer({String email, String password}) async*{
      try {
      yield Loginloadingstate(msg: "validando información");
      if(email == "daniel" && password == "123"){
        yield Loginsucesregisterstate(user: User(),);
      }else{
        yield Loginfailedstate(msg: "Verifique sus datos");
      }
    } catch (e) {
        yield Loginfailedstate(msg: e);
    }
    
    }

  @override
  Stream<LoginState> loginRecovery({String email}) async*{
    try {
      yield Loginloadingstate(msg: "Enciando información");
      //final bool response = await Api().recoveryPassword(email: email);
      final bool response = true;
      
      if(bool !=null){
        if(response){
          yield LoginSuccessRecoveryPasswordstate(msg: "Verifique su correo");
        }else{
          yield LoginSuccessRecoveryPasswordstate(msg: "Usted no se encuentra registrado");
        }
      }else{
        yield LoginSuccessRecoveryPasswordstate(msg: "Por favor intentalo mas tarde");
      }
    } catch (e) {
      yield LoginFailureRecoveryPasswordstate(msg: "Error en la conexión");
    }
  }

}