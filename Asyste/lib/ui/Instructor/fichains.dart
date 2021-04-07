import 'package:asyste/ui/Administrador/programa.dart';
import 'package:asyste/ui/Instructor/aprendizins.dart';
import 'package:asyste/ui/Login/login.dart';
import 'package:asyste/ui/profile/profile.dart';
import 'package:flutter/material.dart';

class Fichains extends StatefulWidget {
  @override
  _FichainsState createState() => _FichainsState();
}

class _FichainsState extends State<Fichains> {
  List<Widget> paginas = [
    Programa(),
    Fichains(),
  ];
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Fichas"),
        elevation: 0,
        actions: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(Icons.exit_to_app),
                    onPressed: () {
                     Route route = MaterialPageRoute(builder: (context) => Login());
                     Navigator.pushReplacement(context, route);
                    }),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          card1(context), //contenido
          card2(context),
          card3(context), //contenido
          card4(context),
          card5(context), //contenido
          card6(context),
          card7(context),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageindex,
        fixedColor: Colors.green,
        onTap: (index) {
          setState(() {
            pageindex = index;
            if (pageindex == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Programa()));
            } else if (pageindex == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Login()));
            } else {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Profile()));
            }
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Inicio")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Buscar")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Perfil")),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget card1(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 3,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Aprendizins()));
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/icon/sol1.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Ficha:"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("1966722"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ambiente:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Software1",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Horario:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tipo:", style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Presencial",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha de inicio:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2020",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha fin:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget card2(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 3,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {
              //Navigator.push(context,
              //  MaterialPageRoute(builder: (context) => Programas()));
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/icon/luna.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Ficha:"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("1966722"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ambiente:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Software1",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Horario:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tipo:", style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Presencial",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha de inicio:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2020",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha fin:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget card3(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 3,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/icon/tarde.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Ficha:"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("1966722"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ambiente:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Software1",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Horario:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tipo:", style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Presencial",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha de inicio:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2020",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha fin:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget card4(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 3,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/icon/sol1.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Ficha:"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("1966722"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ambiente:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Software1",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Horario:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tipo:", style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Presencial",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha de inicio:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2020",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha fin:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget card5(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 3,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/icon/luna.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Ficha:"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("1966722"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ambiente:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Software1",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Horario:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tipo:", style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Presencial",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha de inicio:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2020",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha fin:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget card6(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 3,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/icon/tarde.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Ficha:"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("1966722"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ambiente:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Software1",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Horario:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tipo:", style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Presencial",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha de inicio:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2020",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha fin:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget card7(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 3,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 120,
                        child: Image.asset("assets/icon/sol1.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Ficha:"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("1966722"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ambiente:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Software1",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Horario:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Tipo:", style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Presencial",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha de inicio:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2020",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha fin:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(
                              width: 20,
                            ),
                            Text("03/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}
