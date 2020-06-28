import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreenandappbargrad/pages/pagina1.dart';

class TelaInicialsplash extends StatefulWidget {

  @override
  _TelaInicialsplashState createState() => _TelaInicialsplashState();
}

class _TelaInicialsplashState extends State<TelaInicialsplash> {
  @override
  void initState(){
   super.initState();
   Timer(Duration(seconds: 5),
      () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina1(),settings: RouteSettings(
          name: "/Pagina1",
          ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.white,
      child: Column(
        //Stack
        //alignment:  Alignment.center,
        //Column usa
        //mainAxisAlignment: MainAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Center(
           child:Image.asset('images/cloud2.png',width: 180.0,),
         ),
         Center(
           child:SizedBox(height:50.0),
         ),
         Center(
           child:Text("Carregando...",
             style: TextStyle(fontSize: 25,color: Colors.black54,fontWeight: FontWeight.w800),
           ),
         ),
       ],
      ),
     ),
    );
  }
}
