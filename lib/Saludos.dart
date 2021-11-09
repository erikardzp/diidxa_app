import 'package:flutter/material.dart';
import 'package:diidxa_app/main.dart';

class Saludos {
  String ID;
  String nombreES;
  String imagen;
  String nombreZAPO;

  Saludos(this.ID, this.nombreES, this.imagen, this.nombreZAPO);
}

class SaludosPageState extends State<SaludosPagina> {
  final globalKey = new GlobalKey<ScaffoldState>();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  final List<Saludos> lista = [];

  @override
  void initState() {
    lista.add(new Saludos(
        "1",
        "Hola",
        "https://images.emojiterra.com/google/android-nougat/512px/1f44b.png",
        "Padiuxi"));
    lista.add(new Saludos(
        "2",
        "Hola, como estas",
        "https://cdn-0.emojis.wiki/emoji-pics/whatsapp/handshake-whatsapp.png",
        "Shitalsha"));
    lista.add(new Saludos(
        "3",
        "Buenos días",
        "https://images.emojiterra.com/google/android-pie/512px/1f305.png",
        "Sicarú Siadó"));
    lista.add(new Saludos(
        "4",
        "Buen mediodía",
        "https://i.pinimg.com/originals/64/14/59/6414594c9e29ba60aecf45c8770650ca.png",
        "Sicarú galaadxi"));
    lista.add(new Saludos(
        "5",
        "Buenas tardes",
        "https://images.emojiterra.com/google/android-10/512px/1f307.png",
        "Sicarú huadxi"));
    lista.add(new Saludos(
        "6",
        "Buenas noches",
        "https://images.emojiterra.com/twitter/512px/1f303.png",
        "Sicarú huaxhinni"));
    lista.add(new Saludos(
        "7",
        "Nos vemos",
        "https://images.emojiterra.com/google/android-nougat/512px/1f44b.png",
        "Cadu'yanu'"));
    lista.add(new Saludos(
        "8",
        "¿Como estas?",
        "https://images.emojiterra.com/twitter/512px/1f64b.png",
        "Xi nuu xou´"));
    lista.add(new Saludos(
        "9",
        "Bien",
        "https://www.lalicuadoratdf.com.ar/wp-content/uploads/2019/05/1f44d.png",
        "Galan"));
    lista.add(new Saludos(
        "10",
        "Que te vaya bien",
        "https://cdn-0.emojis.wiki/emoji-pics/whatsapp/handshake-whatsapp.png",
        "Sicarú cheú"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: new Text("Saludos"),),
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