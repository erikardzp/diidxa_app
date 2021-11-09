import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Row(children: <Widget>[
          SizedBox(
          width: 250.0,
          child: FadeAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              text: [
                "Es hora...",
                "¡Ponte a prueba!"
              ],
              textStyle: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Monserrat",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
              ),
              textAlign: TextAlign.center,
              alignment: Alignment.topCenter // or Alignment.topLeft
          ),
        ),
        ])
      ),
    );
  }
}