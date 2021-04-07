import 'package:asyste/bloc/login/bloc/login_bloc.dart';
import 'package:asyste/bloc/login/bloc/login_logic.dart';
import 'package:asyste/bloc/respuestaApi/bloc/respuesta_api_bloc.dart';
import 'package:asyste/ui/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return LoginBloc(logic: LoginLogicInit());
        }),
        BlocProvider(create: (context) {
          return RespuestaApiBloc();
        }),
      ],
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.green,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          color: Colors.green,
          title: "Asyste",
          home: Login(),
        ),
      ),
    );
  }
}
