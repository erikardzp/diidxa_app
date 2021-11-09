import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:diidxa_app/quizpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/animales.png",
    "images/numeros.jpg",
    "images/comida.jpg",
    "images/saludos.jpg",
    "images/colores.png",
    "images/objetos.jpg",
  ];

  List<String> des = [
    "¿Crees ser capaz de \npasar esta prueba?",
    "¿Aun recuerdas todos \nlos numeros?",
    "¿Podras pasar este test \n sin que te de hambre?",
    "¿Crees ser capaz de \npasar esta prueba?",
    "¿Aun recuerdas todos los colores \ndel arcoiris?",
    "¿Que recuerdas mas en donde esta tu mochila o mochila en Zapoteco?",
  ];

  Widget customcard(String langname, String image, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Colors.lightGreen,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: "Monserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: "Monserrat"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Diixda",
          style: TextStyle(
            fontFamily: "Monserrat",
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Animales", images[0], des[0]),
          customcard("Numeros", images[1], des[1]),
          customcard("Comida", images[2], des[2]),
          customcard("Saludos", images[3], des[3]),
          customcard("Colores", images[4], des[4]),
          customcard("Objetos", images[5], des[5]),
        ],
      ),
    );
  }
}