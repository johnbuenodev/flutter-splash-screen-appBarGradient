import 'package:flutter/material.dart';
import 'package:splashscreenandappbargrad/pages/pagina2.dart';


class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Gradient 1/2",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.deepPurple],
              begin: Alignment.topLeft,
              end:Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
          child: RaisedButton(
            padding: EdgeInsets.all(15),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pagina2(),settings: RouteSettings(
                    name: "/Pagina2",
                  )),
              );
            },
            splashColor: Colors.greenAccent,
            //teal
            animationDuration: Duration(seconds: 15),
            colorBrightness: Brightness.dark,
            elevation: 10,
            color: Colors.white,//só raise button
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.purple,)),
            child: Text(
             "Next Page",
             style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.purple,),
            ),
          ),
        ),
      ),
    );
  }
}
