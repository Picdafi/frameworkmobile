import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
      ),
      body: Row(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Text('contoh'),
              Text('contoh'),
              Text('contoh'),
              Row(children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text('contoh'),
              ],)
            ],
          ),
        ),
        Container(
          child: Image.asset(
          'assets/angry-bird-icon.png',
          width: 500,
          height: 240,
        ),
        ),
      ],),
    );
  }
}
