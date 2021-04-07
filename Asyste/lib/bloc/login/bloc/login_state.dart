part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class Loginloadingstate extends LoginState {
  final String msg;
  Loginloadingstate({this.msg});
  @override
  List<Object> get props => [msg];
}

class Loginsucessstate extends LoginState {
  final bool res;
  Loginsucessstate({@required this.res});
  @override
  List<Object> get props => [res];
}

class Loginfailedstate extends LoginState {
  final String msg;
  Loginfailedstate({@required this.msg});
  @override
  List<Object> get props => [msg];
}

class Loginsucesregisterstate extends LoginState {
  final User user;
  Loginsucesregisterstate({@required this.user});
  @override
  List<Object> get props => [user];
}

class LoginSuccessRecoveryPasswordstate extends LoginState {
  final String msg;

  LoginSuccessRecoveryPasswordstate({@required this.msg});

  @override
  List<Object> get props => [msg];
}

class LoginFailureRecoveryPasswordstate extends LoginState {
  final String msg;

  LoginFailureRecoveryPasswordstate({@required this.msg});
  @override
  List<Object> get props => [msg];
}


