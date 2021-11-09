import 'package:flutter/material.dart';
import 'package:diidxa_app/main.dart';

class Colores {
  String ID;
  String nombreES;
  String imagen;
  String nombreZAPO;

  Colores(this.ID, this.nombreES, this.imagen, this.nombreZAPO);
}

class ColoresPageState extends State<ColoresPagina> {
  final globalKey = new GlobalKey<ScaffoldState>();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  final List<Colores> lista = [];

  @override
  void initState() {
    lista.add(new Colores(
        "1",
        "Azul Cielo",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/263/water-wave_1f30a.png",
        "Nasiá"));
    lista.add(new Colores(
        "2",
        "Rojo",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/balloon_1f388.png",
        "Naxhiñaa'"));
    lista.add(new Colores(
        "3",
        "Amarillo",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/sponge_1f9fd.png",
        "Naguchi"));
    lista.add(new Colores(
        "4",
        "Verde",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/four-leaf-clover_1f340.png",
        "Nayaa'"));
    lista.add(new Colores(
        "5",
        "Naranja",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/samsung/265/orange-book_1f4d9.png",
        "Nabiguitu"));
    lista.add(new Colores(
        "6",
        "Rosa",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/263/squid_1f991.png",
        "Naxhiñaa yati"));
    lista.add(new Colores(
        "7",
        "Blanco",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/egg_1f95a.png",
        "Naquichi'"));
    lista.add(new Colores(
        "8",
        "Negro",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/new-moon-face_1f31a.png",
        "Nayaase"));
    lista.add(new Colores(
        "9",
        "Morado",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/umbrella_2602-fe0f.png",
        "Nagugüi"));
    lista.add(new Colores(
        "10",
        "Gris",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/263/tornado_1f32a.png",
        "Nayuu'"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: new Text("Colores"),),
        key: globalKey,
        body: Center(
          child:Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(75.0)),
            ),
            child: Row(
              children: <Widget>[
                _buildPrevButton(),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        lista[_cIndex].imagen,
                        width: 180.0,
                      ),
                    ),
                    Text(
                      lista[_cIndex].nombreZAPO,
                      style: TextStyle(fontFamily: 'Montserrat',
                          color: Colors.black,
                          fontSize: 30.0),
                    ),
                    Text(
                      lista[_cIndex].nombreES,
                      style: TextStyle(fontFamily: 'Montserrat',
                          color: Colors.black38,
                          fontSize: 20.0),
                    ),
                  ],
                ),
                _buildNextButton(),
              ],
            ),
          ),
        ));
  }

  Widget _buildNextButton() {
    return new Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: IconButton(
        onPressed: () {
          print("Next");
          setState(() {
            if (_cIndex < lista.length - 1) _cIndex++;
          });
        },
        icon: Icon(
          Icons.navigate_next,
          size: 40.0,
        ),
        color: Colors.black,
      ),
    );
  }

  Widget _buildPrevButton() {
    return new Padding(
      padding: EdgeInsets.only(left: 35.0),
      child: IconButton(
        onPressed: () {
          setState(() {
            if (_cIndex > 0) _cIndex--;
          });
        },
        icon: Icon(
          Icons.navigate_before,
          color: Colors.black,
          size: 40.0,
        ),
      ),
    );
  }
}