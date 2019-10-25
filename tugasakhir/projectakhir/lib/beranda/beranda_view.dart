import 'package:flutter/material.dart';
import 'package:projectakhir/beranda/beranda_appbar.dart';
import 'package:projectakhir/data/food.dart';
// import 'package:projectakhir/beranda/beranda_model.dart';
// import 'package:carousel_slider/carousel_slider.dart';


class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}



class _BerandaPageState extends State<BerandaPage> {

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Scaffold(
      appBar: new ProjectAppBar(),
      body: new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            foodCard,
            foodThumbnail,
          ],
        ),
//        child: Card(
//          child: Image.asset(
//            'assets/angry-bird-icon.png'
//          ),
//          shape: RoundedRectangleBorder(
//            borderRadius: BorderRadius.circular(10.0),
//          ),
//          elevation: 5,
//            margin: EdgeInsets.all(10),
//        ),
      ),
     )
     );
  
  }

  final foodThumbnail = new Container(
    margin: new EdgeInsets.symmetric(
      vertical: 16.0
    ),
    alignment: FractionalOffset.centerLeft,
    child: new Image(image: new AssetImage('assets/angry-bir-icon.png'),
      height: 92.0,
      width: 92.0,
    ),
  );

  final foodCard = new Container(
    margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
    constraints: new BoxConstraints.expand(),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(height: 4.0),
        new Text('text'),
        new Container(height: 10.0),
        new Text('nama'),
        new Container(
          margin: new EdgeInsets.symmetric(vertical: 8.0),
          height: 2.0,
          width: 18.0,
          color: new Color(0xff00c6ff)
        ),
        new Row(
          children: <Widget>[
            new Image.asset("assets/angry-bird-icon.png", height: 12.0,),
            new Container(width: 8.0),
            new Text('penjual'),
            new Container(width: 24.0),
            new Image.asset("assets/angry-bird-icon.png", height: 12.0,),
            new Container(width: 8.0),
            new Text('food'),
          ],
        )
      ],
    ),
  );

}

