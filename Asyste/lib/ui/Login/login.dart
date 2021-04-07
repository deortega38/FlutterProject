import 'package:asyste/bloc/login/bloc/login_bloc.dart';
import 'package:asyste/ui/Administrador/asistencia.dart';
import 'package:asyste/ui/Administrador/programa.dart';
import 'package:asyste/ui/Instructor/asistenciains.dart';
import 'package:asyste/ui/Instructor/programains.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  TextEditingController usu;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Login name = Login();
  LoginBloc loginBloc;
  TextEditingController emailcontroller;
  TextEditingController paswordcontroller;

  @override
  void initState() {
    loginBloc = BlocProvider.of<LoginBloc>(context);
    emailcontroller = TextEditingController();
    paswordcontroller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    TextEditingController namefinal;
    name.usu = namefinal;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        top: false,
        child: ListView(
          children: [
            Stack(
              children: [
                //image
                Container(
                  height: 255,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 115, 35, 5),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100.0),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(),
                    height: 255.0,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white, //PARA PROBAR CONTAINER
                      borderRadius: new BorderRadius.only(
                        bottomRight: Radius.circular(180.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://www.elheraldo.co/sites/default/files/articulo/2020/03/18/sena.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 3),
                      child: Text(
                        'Bienbenido \n a Asyste',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.grey,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  child: AppBar(
                    title: Text("Asyste"),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.green,
                    elevation: 0,
                    actions: <Widget>[
                      /*
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {},
                        tooltip: 'Share',
                      ),*/
                    ],
                  ),
                ),
              ],
            ),

            //entrada usuario

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.0)),
                  ),
                  labelText: 'Correo electrónico',
                  hintText: "Escribe tu correo",
                  fillColor: Colors.white70,
                  //icon: Icon(Icons.person, color: Colors.black12,),

                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //entrada de password
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextField(
                controller: paswordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                  ),
                  hintText: "Escribe tu contraseña",
                  labelText: 'Contraseña',
                  fillColor: Colors.white70,
                  //icon: Icon(Icons.vpn_key, color: Colors.black12,),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //iniciar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is LoginInitial) {}
                  if (state is Loginloadingstate) {}
                  if (state is Loginsucessstate) {
                    if (emailcontroller.text == "daniel" &&
                        paswordcontroller.text == "123") {
                      Route route = MaterialPageRoute(
                          builder: (context) => Asistenciains());
                      Navigator.pushReplacement(context, route);
                    }
                  } else if (emailcontroller.text == "jeison" &&
                      paswordcontroller.text == "123") {
                    Route route =
                        MaterialPageRoute(builder: (context) => Programains());
                    Navigator.pushReplacement(context, route);
                  } else if (emailcontroller.text == "admin" &&
                      paswordcontroller.text == "123") {
                    Route route =
                        MaterialPageRoute(builder: (context) => Programa());
                    Navigator.pushReplacement(context, route);
                  }

                  if (state is Loginfailedstate) {
                    mostraralerta(context, state);
                  }
                  if (state is LoginSuccessRecoveryPasswordstate) {
                    print('Verificar correo');
                  }
                },
                child: BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                  if (state is Loginloadingstate) {
                    return CircularProgressIndicator();
                  } else {
                    return RaisedButton(
                        elevation: 0,
                        padding: EdgeInsets.all(22),
                        child: Text("Iniciar sesión"),
                        textColor: Colors.white,
                        shape: StadiumBorder(),
                        color: Color.fromRGBO(89, 181, 72, 1),
                        onPressed: () {
                          // Navigator.push(
                          //   context, MaterialPageRoute(builder: (context) => Programa()));
                          _doLogin();
                        });
                  }
                }),
              ),
            ),
            //iniciarcongoogle
            /*botoniniciarcongoogle(),*/
            //olvidastecontraseña
            SizedBox(
              height: 15,
            ),
            FlatButton(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                textColor: Colors.grey,
                onPressed: () {
                  _dolRegistres();
                },
                child: Text("Crear cuenta")),

            SizedBox(
              height: 5,
            ),
            //crearcuenta

            FlatButton(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                textColor: Colors.grey,
                onPressed: () {
                  if (emailcontroller.text.length > 1) {
                    loginBloc.add(LoginRecoveryPasswordEvent(
                        email: emailcontroller.text));
                  } else {
                    print('Por favor escribe un email');
                  }
                },
                child: Text("¿Olvidates contraseña?")),
            SizedBox(
              height: 70,
            ),
            Center(
                child: Text(
              "© Todos los derechos resevados 2021",
              style: TextStyle(color: Colors.grey),
            )),
          ],
        ),
      ),
    );
  }

  void _doLogin() {
    loginBloc.add(
      Loginloginevent(
        email: emailcontroller.value.text,
        password: paswordcontroller.value.text,
      ),
    );
  }

  void _dolRegistres() {
    loginBloc.add(Loginregistrerevent(
        email: emailcontroller.value.text,
        password: paswordcontroller.value.text));
  }

  void mostraralerta(BuildContext context, LoginState state) async {
    showDialog(
      barrierDismissible: false,
      context: context,
      child: AlertDialog(
        title: Text(state.props.first),
        content: Text("Quieres salir"),
        actions: [
          Image.asset("assets/icon/warning.png"),
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Salir")),
        ],
      ),
    );
  }
}

/*Widget botoniniciarcongoogle() {
  return Container(
    height: 60,
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
    child: OutlineButton(
        child: Row(
          children: [
            Image.asset("assets/icon/google.png"),
            Expanded(
              child: Text(
                'Iniciar con Google',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        padding: EdgeInsets.all(20),
        textColor: Colors.black54,
        shape: StadiumBorder(),
        color: Colors.redAccent,
        onPressed: () {}),
  );
}*/
