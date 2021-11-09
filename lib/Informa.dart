import 'package:flutter/material.dart';
import 'package:diidxa_app/main.dart';
import 'package:diidxa_app/DiixdaInfo.dart';

void main() => runApp(MyApp());

class DiixdaPagina extends StatefulWidget{
  @override
  State createState() => InformacionDiidxaState();
}

class InfoPageState extends State<InformacionPagina>  {
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
        appBar: AppBar(title: new Text("Sobre Diidxa"),),
        key: globalKey,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          InkWell(
             /*onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => SaludosPagina()),
               );
             },*/
           child: new Container(
            height: 60,
            color: Colors.white,
           child: const Center(child: Text('Términos de Uso')),
           ),
         ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiixdaPagina()),
              );
            },
            child: new Container(
              height: 60,
              color: Colors.white,
              child: const Center(child: Text('Aviso de Privacidad')),
            ),
          ),
          InkWell(
            /*onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SaludosPagina()),
              );
            },*/
            child: new Container(
              height: 60,
              color: Colors.white,
              child: const Center(child: Text('Licencias de Codigo Abierto')),
            ),
          ),

        ],
      )
    );
  }
}