import 'package:flutter/material.dart';
import 'package:diidxa_app/main.dart';

class Objetos {
  String ID;
  String nombreES;
  String imagen;
  String nombreZAPO;

  Objetos(this.ID, this.nombreES, this.imagen, this.nombreZAPO);
}

class ObjetosPageState extends State<ObjetosPagina> {
  final globalKey = new GlobalKey<ScaffoldState>();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  final List<Objetos> lista = [];

  @override
  void initState() {
    lista.add(new Objetos(
        "1",
        "Mesa",
        "https://images.vexels.com/media/users/3/208460/isolated/preview/26bf281ff1a4b2acbe988667fda013fe-ilustraci--n-de-mesa-redonda-de-madera-by-vexels.png",
        "Mexha'"));
    lista.add(new Objetos(
        "2",
        "Juguete",
        "https://2img.net/h/reprografialibreska.com/wp-content/uploads/2017/04/cubos.png",
        "Tanguyú"));
    lista.add(new Objetos(
        "3",
        "Silla",
        "https://emojis.wiki/emoji-pics/apple/chair-apple.png",
        "Bangu'"));
    lista.add(new Objetos(
        "4",
        "Collar",
        "https://images.vexels.com/media/users/3/157510/isolated/preview/eecc0b522151a450e8fc67d3df14144e-collar-de-perlas-con-vector-de-colgante-by-vexels.png",
        "Biga'"));
    lista.add(new Objetos(
        "5",
        "Mochila",
        "https://images.emojiterra.com/mozilla/512px/1f392.png",
        "Bishiapa"));
    lista.add(new Objetos(
        "6",
        "Sombrero",
        "https://cdn-0.emojis.wiki/emoji-pics/mozilla/top-hat-mozilla.png",
        "Guiidibandaa'"));
    lista.add(new Objetos(
        "7",
        "Casa",
        "https://images.emojiterra.com/google/android-11/512px/1f3e0.png",
        "Yoo'"));
    lista.add(new Objetos(
        "8",
        "Arma",
        "https://images.emojiterra.com/google/android-oreo/512px/1f52b.png",
        "Guiiba"));
    lista.add(new Objetos(
        "9",
        "Vela",
        "https://images.emojiterra.com/google/android-10/512px/1f56f.png",
        "Gui'ri"));
    lista.add(new Objetos(
        "10",
        "Pelota",
        "https://images.emojiterra.com/google/android-11/512px/26bd.png",
        "Bidoola"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: new Text("Objetos"),),
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
        )
    );
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