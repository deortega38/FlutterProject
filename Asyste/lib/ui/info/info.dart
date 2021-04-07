import 'package:asyste/ui/Login/login.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Asyste",
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
        ),
      ),
      body: ListView(
        children: [
          Container(
              height: 200, child: Image.asset("assets/images/logosena.gif")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Text(
                "Asyste",
                style: TextStyle(fontSize: 60),
              )),
            ],
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Asyste es un sistema de información que se encarga de gestionar y controlar las asistencias de los aprendices del centro comercio y servicios de la reginal Cauca.",
                style: TextStyle(fontSize: 25),
              )),
          Container(
            margin: EdgeInsets.all(30.0),
            child: RaisedButton(
              elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                child: Text(
                  "Salir",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                autofocus: true,
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=> Login()));
                }),
          ),
        ],
      ),
    );
  }
}
