import 'package:diidxa_app/Animales.dart';
import 'package:diidxa_app/Colores.dart';
import 'package:diidxa_app/Numeros.dart';
import 'package:diidxa_app/Comida.dart';
import 'package:diidxa_app/Objetos.dart';
import 'package:diidxa_app/Saludos.dart';
import 'package:diidxa_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:diidxa_app/Informa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Diidxa',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => Inicio(),
          "/saludos": (BuildContext context) => SaludosPagina(),
          "/animales": (BuildContext context) => AnimalesPagina(),
          "/colores": (BuildContext context) => ColoresPagina(),
          "/objetos": (BuildContext context) => ObjetosPagina(),
          "/comida": (BuildContext context) => ComidaPagina(),
          "/numeros": (BuildContext context) => NumerosPagina(),
          "/test": (BuildContext context) => TestPagina(),
          "/informa": (BuildContext context) => InformacionPagina(),
        },


        home: Inicio()
    );
  }
}

class SaludosPagina extends StatefulWidget{

  @override
  State createState() => SaludosPageState();

}

class AnimalesPagina extends StatefulWidget{

  @override
  State createState() => AnimalesPageState();
}

class ColoresPagina extends StatefulWidget{

  @override
  State createState() => ColoresPageState();
}

class ObjetosPagina extends StatefulWidget{

  @override
  State createState() => ObjetosPageState();
}

class ComidaPagina extends StatefulWidget{

  @override
  State createState() => ComidaPageState();
}

class NumerosPagina extends StatefulWidget{

  @override
  State createState() => NumerosPageState();
}

class TestPagina extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: splashscreen(),
    );
  }
}

class InformacionPagina extends StatefulWidget{

  @override
  State createState() => InfoPageState();
}

class Inicio extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      body:
        Container(
        padding: EdgeInsets.only(
        top: 70,
        bottom: 10,
        right: 10,
        left: 10
      ),
     child:
      Column(
      children: <Widget>[
      Text("Diidxa", style: TextStyle(
      fontSize: 70.0,
      color: Colors.black,
      fontFamily: "Quando",
      fontWeight: FontWeight.w700,
    ),),
      Container(
        padding: EdgeInsets.only(
            top: 0,
            bottom: 10,
            right: 10,
            left: 10
        ),
        child:
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/saludos");
                        },
                        padding: EdgeInsets.all(10.0),
                        child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.pan_tool),
                                Text("Saludos", style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontFamily: "Quando",
                                  fontWeight: FontWeight.w700,
                                ),),
                              ],
                            ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/animales");
                        },
                        padding: EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.pets),
                              Text("Animales", style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontFamily: "Quando",
                                fontWeight: FontWeight.w700,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/colores");
                        },
                        padding: EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.color_lens),
                              Text("Colores", style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontFamily: "Quando",
                                fontWeight: FontWeight.w700,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/numeros");
                        },
                        padding: EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.exposure_plus_1),
                              Text("Numeros", style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontFamily: "Quando",
                                fontWeight: FontWeight.w700,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/objetos");
                        },
                        padding: EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.attach_file),
                              Text("Objetos", style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontFamily: "Quando",
                                fontWeight: FontWeight.w700,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, "/comida");
                        },
                        padding: EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.fastfood),
                              Text("Comida", style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontFamily: "Quando",
                                fontWeight: FontWeight.w700,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 65.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                    child: IconButton(
                      icon: Icon(Icons.info),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pushNamed(context, "/informa");
                      },
                    ),
                ),
                Container(
                  height: 65.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.green,
                        style: BorderStyle.solid,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Icon(Icons.shopping_basket, color: Colors.green),
                  ),
                ),
                Container(
                    height: 65.0,
                    width: 120.0,
                  child:FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    color: Colors.black,
                    textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.green,
                      onPressed: (){
                      Navigator.pushNamed(context, "/test");
                      },
                      child: Text(
                        "Test",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    ],
      ),
        ),
    );
  }
}
