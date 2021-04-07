import 'dart:async';

import 'package:asyste/bloc/login/bloc/login_logic.dart';
import 'package:asyste/model/User.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginLogic logic;
  LoginBloc({@required this.logic}) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if(event is Loginloginevent){
      yield* logic.loginIn(email: event.email, password: event.password);
    }else if(event is Loginregistrerevent){
      yield* logic.loginRegistrer(email: event.email, password: event.password);
    }else if(event is LoginRecoveryPasswordEvent){
      yield* logic.loginRecovery(email: event.email);
    }
    
    else{
      yield LoginInitial();
    }
  }
}
