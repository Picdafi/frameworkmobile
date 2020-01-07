import 'package:flutter/material.dart';
import 'authentication.dart';
import 'root_page.dart';

//void main() => runApp(MyApp());
void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new RootPage(auth: new Auth()));
  }
}


