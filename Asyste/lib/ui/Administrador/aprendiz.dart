import 'package:asyste/ui/Administrador/asistencia.dart';
import 'package:asyste/ui/Administrador/ficha.dart';
import 'package:asyste/ui/Administrador/programa.dart';
import 'package:asyste/ui/Login/login.dart';
import 'package:asyste/ui/profile/profile.dart';
import 'package:flutter/material.dart';

class Aprendiz extends StatefulWidget {
  @override
  _AprendizState createState() => _AprendizState();
}

class _AprendizState extends State<Aprendiz> {
  List<Widget> paginas = [
    Programa(),
    Ficha(),
  ];
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Eventos"),
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(Icons.exit_to_app),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Login());
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

Card card1(BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    elevation: 3,
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Asistencia()));
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        width: 80, child: Image.asset("assets/icon/dia.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Algoritmia'),
                        Row(
                          children: [
                            Text(
                              "Hora de inicio:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "7:10",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hora fin:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "1:00",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
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
                        width: 80, child: Image.asset("assets/icon/doc.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Gramática de ingles'),
                        Row(
                          children: [
                            Text(
                              "Hora de inicio:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "7:10",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hora fin:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "1:00",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
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
                        width: 80,
                        child: Image.asset("assets/icon/phython.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sintaxis Phyton'),
                        Row(
                          children: [
                            Text(
                              "Hora de inicio:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "7:10",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hora fin:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "1:00",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

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
                        width: 80, child: Image.asset("assets/icon/dance.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Baile deportotivo'),
                        Row(
                          children: [
                            Text(
                              "Hora de inicio:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "7:10",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hora fin:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "1:00",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

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
                        width: 80, child: Image.asset("assets/icon/co.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Charla de Salud'),
                        Row(
                          children: [
                            Text(
                              "Hora de inicio:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "7:10",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hora fin:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "1:00",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

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
                        width: 80, child: Image.asset("assets/icon/logic.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lógica de programación'),
                        Row(
                          children: [
                            Text(
                              "Hora de inicio:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "7:10",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hora fin:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "1:00",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}

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
                        width: 80, child: Image.asset("assets/icon/bie.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Charla Bienestar al aprendiz'),
                        Row(
                          children: [
                            Text(
                              "Hora de inicio:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "7:10",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hora fin:  ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "1:00",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {}),
                  ],
                ),
              ],
            )),
      ],
    ),
  );
}
