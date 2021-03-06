import 'package:diidxa_app/Colores.dart';
import 'package:flutter/material.dart';
import 'package:diidxa_app/home.dart';

class resultpage extends StatefulWidget {
  int marks;
  resultpage({Key key , @required this.marks}) : super(key : key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}

class _resultpageState extends State<resultpage> {

  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String message;
  String image;

  @override
  void initState(){
    if(marks < 5){
      image = images[2];
      message = "Deberías esforzarte..\n" + "Tu puntaje $marks";
    }else if(marks < 8){
      image = images[1];
      message = "Puedes hacerlo mejor..\n" + "Tu puntaje $marks";
    }else{
      image = images[0];
      message = "¡Excelente!\n" + "Tu puntaje $marks";
    }
    super.initState();
  }

  int marks;
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          "Resultado",
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                color: Colors.green,
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        color: Colors.green,
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Quando",
                              color: Colors.white,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                  },
                  child: Text(
                    "Continuar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.lightGreen),
                  splashColor: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}