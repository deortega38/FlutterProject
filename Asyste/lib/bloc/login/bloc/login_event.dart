part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class Loginloginevent extends LoginEvent{
  final String email;
  final String password;

  Loginloginevent({@required this.email, @required this.password});
  
  
  @override
  List<Object> get props => [email, password];
}

class Loginregistrerevent extends LoginEvent{
  final String email;
  final String password;

  Loginregistrerevent({@required this.email, @required this.password});

  @override
  List<Object> get props => [email, password];
}

class LoginRecoveryPasswordEvent extends LoginEvent{
  final String email;

  LoginRecoveryPasswordEvent({@required this.email});
  @override
  List<Object> get props => [email];
}

