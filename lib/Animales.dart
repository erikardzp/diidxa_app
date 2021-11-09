import 'package:flutter/material.dart';
import 'package:diidxa_app/main.dart';

class Animales {
  String ID;
  String nombreES;
  String imagen;
  String nombreZAPO;

  Animales(this.ID, this.nombreES, this.imagen, this.nombreZAPO);
}

class AnimalesPageState extends State<AnimalesPagina> {
  final globalKey = new GlobalKey<ScaffoldState>();
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  final List<Animales> lista = [];

  @override
  void initState() {
    lista.add(new Animales(
        "1",
        "Perro",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Dog_Emoji_large.png?v=1571606065",
        "Bi'cu"));
    lista.add(new Animales(
        "2",
        "Cerdo",
        "https://i.pinimg.com/originals/db/d2/62/dbd262b26c121a4c60a182caac850471.png",
        "Bihui"));
    lista.add(new Animales(
        "3",
        "Vaca",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Cow_emoji_icon_png_1024x1024.png?v=1571606068",
        "Yuuse"));
    lista.add(new Animales(
        "4",
        "Pez",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Big_Tuna_Iphone_Emoji_JPG_large.png?v=1571606114",
        "Benda"));
    lista.add(new Animales(
        "5",
        "Iguana",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Lizard_Iphone_Emoji_JPG_large.png?v=1571606114",
        "Guchachi'"));
    lista.add(new Animales(
        "6",
        "Tortuga",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Turtle_Iphone_Emoji_JPG_large.png?v=1571606114",
        "Bigu"));
    lista.add(new Animales(
        "7",
        "Ardilla",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Squirrel_Iphone_Emoji_JPG_large.png?v=1571606115",
        "Chisa"));
    lista.add(new Animales(
        "8",
        "Caballo",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Running_Horse_Iphone_Emoji_JPG_large.png?v=1571606115",
        "Máni'"));
    lista.add(new Animales(
        "9",
        "Guajolote",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/Turkey_Iphone_Emoji_JPG_large.png?v=1571606115",
        "Tou'"));
    lista.add(new Animales(
        "10",
        "Gato",
        "https://cdn.shopify.com/s/files/1/1061/1924/products/CAT_emoji_icon_png_large.png?v=1571606068",
        "Mixtu'"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
      appBar: AppBar(title: new Text("Animales"),),
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