import 'package:flutter/material.dart';
import 'package:diidxa_app/main.dart';

class Comida {
  String ID;
  String nombreES;
  String imagen;
  String nombreZAPO;

  Comida(this.ID, this.nombreES, this.imagen, this.nombreZAPO);
}

class ComidaPageState extends State<ComidaPagina> {
  final globalKey = new GlobalKey<ScaffoldState>();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  final List<Comida> lista = [];

  @override
  void initState() {
    lista.add(new Comida(
        "1",
        "Platano",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Banana_Emoji_compact.png?v=1571606034",
        "Biduaa"));
    lista.add(new Comida(
        "2",
        "Tomate",
        "https://cdn-0.emojis.wiki/emoji-pics/facebook/tomato-facebook.png",
        "Bichooshe"));
    lista.add(new Comida(
        "3",
        "Sandia",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Watermelon_Emoji_compact.png?v=1571606034",
        "Shandie"));
    lista.add(new Comida(
        "4",
        "Maiz",
        "https://i.pinimg.com/originals/9e/8e/29/9e8e29d13bce2fb1c3d7976b076496ad.jpg",
        "Niza"));
    lista.add(new Comida(
        "5",
        "Limon",
        "https://emojis.wiki/emoji-pics/apple/lemon-apple.png",
        "Cuanaí"));
    lista.add(new Comida(
        "6",
        "Dulce",
        "https://images.emojiterra.com/google/android-pie/512px/1f36c.png",
        "Dxinña"));
    lista.add(new Comida(
        "7",
        "Tortilla",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRzpJBCRv4UyOoKxsj75YFFIi4g2cJARsA9Ww&usqp=CAU",
        "Gueta"));
    lista.add(new Comida(
        "8",
        "Chocolate",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Chocolate_Bar_Emoji_compact.png?v=1571606035",
        "Dxuladi"));
    lista.add(new Comida(
        "9",
        "Cafe",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Hot_Coffee_Emoji_compact.png?v=1571606066",
        "Biziaanda'"));
    lista.add(new Comida(
        "10",
        "Cerveza",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Beer_Emoji_compact.png?v=1571606035",
        "Bichi'ña"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: new Text("Comida"),),
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