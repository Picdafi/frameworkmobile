import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}


class MyHomePage extends StatelessWidget{
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
//        child: Text('My Page!')),
          child: RaisedButton(
    onPressed: (){
      final snackBar = SnackBar(
        content: Text('Yay! A SnackBar!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: (){

          },
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    },
          child: Text('Show SnackBar'),
          ),
    ),
      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: (){

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: (){

              Navigator.pop(context);
            },
          )
        ],
      ),
      ),
    );
  }


}
