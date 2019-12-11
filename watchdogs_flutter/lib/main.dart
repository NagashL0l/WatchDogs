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
        appBar: AppBar(
          title: Center(
            child: Text('WatchDogs'),
          )
        ),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage("images/warningDog.png"), fit: BoxFit.cover,),
              ),
            ),
            new Container(
              child: Text("Pantalla principal"),
            )
          ],
        )
      ),
    );
  }

  @override
  Widget OpcionesPantallaPrincipal(BuildContext context) {
    return MaterialApp(
      padding : const EdgeInsets.all(32),
      child: Container(
        children: <Widget> [

        ]

      )

    );



  }

}