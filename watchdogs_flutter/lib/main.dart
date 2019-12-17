import 'package:flutter/material.dart';

const ColorAppbar = const Color(0xFFFF00);
//const PaddingGeneral = const Padding(padding: 32);



void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WatchDogs',
      home: Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.black,
          title: Center(
            child: Text('WatchDogs', style: TextStyle(color: Colors.white)),
          )
        ),
        body: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/warningDogBack.png"),
                fit: BoxFit.cover,
              ),
            ),



            )//child: botonesPrincipales
      )

    );
  }

  Widget botonesPrincipales = Container (

    child: new Column(

      children: <Widget>[

        new FlatButton(
          child: new Text("Camara"),
          color:  Colors.black,
          onPressed: null,
        ),


        new FlatButton(
          child: new Text("Otra cosa "),
          color:  Colors.black,
          onPressed: null,
        ),


      ],
    ),
  );


  void pulsado(){
    print("pulsado XD");
  }

}