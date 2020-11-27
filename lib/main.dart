import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_app_bangundatar/landingpage.dart';
import 'package:flutter_app_bangundatar/aboutme.dart';
import 'package:flutter_app_bangundatar/persegi.dart';
import 'package:flutter_app_bangundatar/segitiga.dart';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: new SplashScreen(),
    routes:
 <String, WidgetBuilder>{
      '/landingpage' : (BuildContext context) => new LandingPage(),
      '/aboutme' : (BuildContext context) => new Aboutme(),
      '/persegi' : (BuildContext context) => new Persegi(),
      '/segitiga' : (BuildContext context) => new Segitiga(),
      
    },
  ));
}

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  startTime() async{
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage(){
    Navigator.of(context).pushReplacementNamed('/landingpage');
  }

  @override
  void initState(){
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset('assets/Bangundatar_b.png'),
            new Text("Kalkulator Bangun Datar",style: new TextStyle(fontSize: 30.0),),
          ],
        )
      )
    );

  }
}