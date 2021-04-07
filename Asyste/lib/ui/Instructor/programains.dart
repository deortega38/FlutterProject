
import 'package:asyste/ui/Administrador/ficha.dart';
import 'package:asyste/ui/Instructor/fichains.dart';
import 'package:asyste/ui/Login/login.dart';
import 'package:asyste/ui/profile/profile.dart';
import 'package:flutter/material.dart';



class Programains extends StatefulWidget {
  @override
  _ProgramainsState createState() => _ProgramainsState();
}

class _ProgramainsState extends State<Programains> {
  List<Widget> paginas = [
    Programains(),
    Ficha(),
  ];
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Programas", style: TextStyle(color: Colors.white),),
        shadowColor: Colors.white,
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.exit_to_app),
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
        onTap: (index){
          setState(() {
            pageindex = index;
            if (pageindex == 0) {
              Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Programains()));  
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
            onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Fichains()));
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        width: 80, child: Image.asset("assets/icon/code.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.white,
                            child: Text('Analisis y desarrollo de sistemas \nde informacionó')),
                        
                        Text(
                          "Tecnologo",
                          style: TextStyle(color: Colors.grey),

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
                        width: 80, child: Image.asset("assets/icon/admin.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.white,
                            child: Text('Analisis y desarrollo de sistemas')),
                        Text('de información'),
                        Text(
                          "Tecnologo",
                          style: TextStyle(color: Colors.grey),
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
                        child: Image.asset("assets/icon/reunion.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.white,
                            child: Text('Analisis y desarrollo de sistemas')),
                        Text('de información'),
                        Text(
                          "Tecnologo",
                          style: TextStyle(color: Colors.grey),
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
                        width: 80,
                        child: Image.asset("assets/icon/talent.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.white,
                            child: Text('Analisis y desarrollo de sistemas')),
                        Text('de información'),
                        Text(
                          "Tecnologo",
                          style: TextStyle(color: Colors.grey),
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
                        width: 80, child: Image.asset("assets/icon/page.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.white,
                            child: Text('Analisis y desarrollo de sistemas')),
                        Text('de información'),
                        Text(
                          "Tecnologo",
                          style: TextStyle(color: Colors.grey),
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
                        width: 80, child: Image.asset("assets/icon/admin.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.white,
                            child: Text('Analisis y desarrollo de sistemas')),
                        Text('de información'),
                        Text(
                          "Tecnologo",
                          style: TextStyle(color: Colors.grey),
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
                        width: 80, child: Image.asset("assets/icon/admin.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                            color: Colors.white,
                            child: Text('Analisis y desarrollo de sistemas')),
                        Text('de información'),
                        Text(
                          "Tecnologo",
                          style: TextStyle(color: Colors.grey),
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
