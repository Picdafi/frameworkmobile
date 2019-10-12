import 'package:flutter/material.dart';

class BasicLayoutBuilder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LayoutBuilder Widget")),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 400) {
            return _buildTwoContainers();
          } else {
            return _buildOneContainer();
          }
        },
      ),
    );
  }

  Widget _buildTwoContainers() {
    return Center(
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
//
            height: 270.0,
            width: 360.0,
//            color: Colors.red,
            child: Column(
              children: <Widget>[
                titleText,
                subTitle,
                ratings,
                iconList,
              ],
            ),
      ),
          Container(
            height: 200.0,
            width: 200.0,
            child: Image.asset('assets/angry-bird-icon.png'),
          ),
        ],
      ),
    );

  }

  Widget _buildOneContainer() {
    return Center(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset('assets/angry-bird-icon.png'),
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: 400.0,
            width: 400.0,
//            color: Colors.red,
            child: Column(
              children: <Widget>[
                titleText,
                subTitle,
                ratings,
                iconList,
              ],
            ),
          ),
        ],
      ),
    );
  }

  final titleText = Container(
    padding: EdgeInsets.all(20),
    child: Text(
      'Strawberry Pavlova',
      style: TextStyle(
//        fontWeight: FontWeight.w800,
//        letterSpacing: 0.5,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
  );


  final subTitle = Text(
    'Pavlova is a meringue-based dessert named after the Russian ballerina '
        'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
        'topped with fruit and whipped cream.',
    textAlign: TextAlign.justify,
    style: TextStyle(
      fontFamily: 'Georgia',
      fontSize: 15,
    ),
  );

  final ratings = Container(
    padding: EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
        Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 15,
          ),
        ),
      ],
    ),
  );

  final iconList = DefaultTextStyle.merge(
//    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('PREP:'),
              Text('25 min'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer, color: Colors.green[500]),
              Text('COOK:'),
              Text('1 hr'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              Text('FEEDS:'),
              Text('4-6'),
            ],
          ),
        ],
      ),
    ),
  );
}