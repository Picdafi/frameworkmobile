import 'package:flutter/material.dart';
import 'layoutBuilder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      debugShowCheckedModeBanner: false,
      home: BasicLayoutBuilder(),
    );
  }
}


