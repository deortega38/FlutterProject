import 'package:asyste/ui/Administrador/ficha.dart';
import 'package:asyste/ui/Administrador/programa.dart';
import 'package:asyste/ui/Login/login.dart';
import 'package:asyste/ui/profile/profile.dart';
import 'package:flutter/material.dart';


class Asistenciaap extends StatefulWidget {
  @override
  _AsistenciaapState createState() => _AsistenciaapState();
}

class _AsistenciaapState extends State<Asistenciaap> {
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
        backgroundColor: Colors.green,
        title: Text("Asistencia"),
        elevation: 0,
        actions: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(Icons.exit_to_app),
                    color: Colors.white,
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
          //contenido
          card1(context), 
          card2(context), 
          card3(context), 
          card4(context), 

        ],
      ),

bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageindex,
        fixedColor: Colors.green,
        onTap: (index){
          setState(() {
            pageindex = index;
            if (pageindex == 0) {
              Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Programa()));  
            } else if(pageindex == 1){
            Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Login()));
            }else{
                  Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Profile()));
          
            }
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Inicio")),
          BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("Buscar")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Perfil")),
          
      ],),
    );
  }
}

Widget card1(BuildContext context) {
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [

                            Text("Estado:"),
                            SizedBox(width: 20,),
                            Text("Asistió"),
                           
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("01/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Hora de ingreso:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Hora salida:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        
                        Row(
                          children: [
                            Text("Justificación:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Archivo",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Regional:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Cauca",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Centro:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Comersios y servicios",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 20,),
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
Widget card2(BuildContext context) {
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [

                            Text("Estado:"),
                            SizedBox(width: 20,),
                            Text("Falto"),
                           
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("01/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Hora de ingreso:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Hora salida:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        
                        Row(
                          children: [
                            Text("Justificación:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Archivo",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Regional:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Cauca",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Centro:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Comersios y servicios",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 20,),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [

                            Text("Estado:"),
                            SizedBox(width: 20,),
                            Text("Asistió"),
                           
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("01/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Hora de ingreso:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Hora salida:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        
                        Row(
                          children: [
                            Text("Justificación:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Archivo",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Regional:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Cauca",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Centro:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Comersios y servicios",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 20,),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [

                            Text("Estado:"),
                            SizedBox(width: 20,),
                            Text("Falto"),
                           
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fecha:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("01/02/2021",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Hora de ingreso:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Hora salida:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("7 am - 1 pm",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        
                        Row(
                          children: [
                            Text("Justificación:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Archivo",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Regional:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Cauca",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Centro:",
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 20,),
                            Text("Comersios y servicios",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 20,),
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

