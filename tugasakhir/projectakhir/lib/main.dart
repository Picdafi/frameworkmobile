import 'package:flutter/material.dart';
// import 'package:projectakhir/landing/landingpage_view.dart';
// import 'package:projectakhir/launcher/launcher_view.dart';
// import 'package:projectakhir/beranda/beranda_view.dart';
import 'package:projectakhir/constant.dart';
// import 'package:projectakhir/landing/landingpage_view.dart';
import 'package:projectakhir/launcher/launcher_view.dart';
// import 'package:projectakhir/launcher/launcher_view.dart';
// import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Akhir',
      theme: new ThemeData(
        primaryColor: Warnadesain.green,
        accentColor: Warnadesain.green,
      ),
      home: new LauncherPage(),
    );
  }
}
