import 'package:diidxa_app/Informa.dart';
import 'package:flutter/material.dart';
import 'package:diidxa_app/main.dart';
import 'package:diidxa_app/Informa.dart';

void main() => runApp(MyApp());

class InformacionDiidxaState extends State<DiixdaPagina>  {
  final globalKey = new GlobalKey<ScaffoldState>();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        key: globalKey,
        body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.green),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 150,
              image: AssetImage('images/icon.png'),
            ),
            Text("¿Qué es Diidxa?", style: TextStyle(color: Colors.white, fontSize: 40),),
            SizedBox( height: 40,),
            Text(
              "Una de las causas principales de la creación de esta app es que la lengua Zapoteca se está llegando a perder debido a que los padres dejan de hablar su lengua a los hijos. Al no haber niños que la hablen, difícilmente puede sobrevivir una lengua. Las razones por las que un padre puede dejar de hablar a sus hijos en su lengua son muy variadas, pero una de las principales es la discriminación y la poca utilidad que ven al hecho de hablar su lengua en espacios públicos. Diixda, es una aplicación pensada en el aprendizaje de la lengua zapoteca, mediante vocabulario inicial que después de que el usuario se sienta seguro puede realizar una pequeña prueba para saber que tan bien aprendido ha sido el vocabulario. \nVersion 1.01.01",
              style: TextStyle(color: Colors.white,),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}