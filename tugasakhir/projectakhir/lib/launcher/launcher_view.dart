import 'package:flutter/material.dart';
import 'dart:async';
import 'package:projectakhir/landing/landingpage_view.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

/*
ini adalah kelas yg digunakan untuk membuathalaman launcher 
dengan gambar angry bird ketika aplikasi pertama kali dijalankan. 
*/
class _LauncherPageState extends State<LauncherPage> {
  
  @override

  void initState(){
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new LandingPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset(
          "assets/angry-bird-icon.png",
          height: 100.0,
          width: 200.0,
        ),
      ),
    );
  }
}