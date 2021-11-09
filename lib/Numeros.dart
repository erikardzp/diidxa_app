import 'package:flutter/material.dart';
import 'package:diidxa_app/main.dart';

class Numeros {
  String ID;
  String nombreES;
  String imagen;
  String nombreZAPO;

  Numeros(this.ID, this.nombreES, this.imagen, this.nombreZAPO);
}

class NumerosPageState extends State<NumerosPagina> {
  final globalKey = new GlobalKey<ScaffoldState>();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  final List<Numeros> lista = [];

  @override
  void initState() {
    lista.add(new Numeros(
        "1",
        "Uno",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-one_31-fe0f-20e3.png",
        "Tobi"));
    lista.add(new Numeros(
        "2",
        "Dos",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-two_32-fe0f-20e3.png",
        "Chuppa"));
    lista.add(new Numeros(
        "3",
        "Tres",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-three_33-fe0f-20e3.png",
        "Chonna"));
    lista.add(new Numeros(
        "4",
        "Cuatro",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-four_34-fe0f-20e3.png",
        "Taapa"));
    lista.add(new Numeros(
        "5",
        "Cinco",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-five_35-fe0f-20e3.png",
        "Gaayu'"));
    lista.add(new Numeros(
        "6",
        "Seis",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-six_36-fe0f-20e3.png",
        "Shoopa"));
    lista.add(new Numeros(
        "7",
        "Siete",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-seven_37-fe0f-20e3.png",
        "Gadxe"));
    lista.add(new Numeros(
        "8",
        "Ocho",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-eight_38-fe0f-20e3.png",
        "Shono"));
    lista.add(new Numeros(
        "9",
        "Nueve",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-digit-nine_39-fe0f-20e3.png",
        "Ga'"));
    lista.add(new Numeros(
        "10",
        "Diez",
        "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/keycap-10_1f51f.png",
        "Chii"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: new Text("Numeros"),),
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