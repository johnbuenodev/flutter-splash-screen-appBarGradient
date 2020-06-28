import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreenandappbargrad/pages/pagina1.dart';
import 'package:splashscreenandappbargrad/pages/pagina2.dart';
import 'package:splashscreenandappbargrad/splash_screen_page/tela_inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Gradient',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TelaInicialsplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
