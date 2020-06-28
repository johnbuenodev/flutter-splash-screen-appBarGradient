import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Gradient 2/2",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.indigo],
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
        ),
        child: Center(
          child: RaisedButton(
            padding: EdgeInsets.fromLTRB(55, 15, 55, 15),
            onPressed: (){
              //retorna para a raiz do sistema ou seleciona uma hora declarada e o foco retornada a ela destruindo as outras camadas
              Navigator.popUntil(context, ModalRoute.withName("/Pagina1"));
              
            },
            splashColor: Colors.greenAccent,
            //teal
            animationDuration: Duration(seconds: 15),
            colorBrightness: Brightness.light, //2
            elevation: 10,
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),
                side: BorderSide(color: Colors.indigo,)),
            child: Text(
              "Back",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.indigo,),
            ),
          ),
        ),
      ),
    );
  }
}
