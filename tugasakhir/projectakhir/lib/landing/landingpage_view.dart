/*
ini digunakan untuk membuat timer, kelas splash screen terbuka
maka gambar akan diam beberapa saat sebelum pindah ke landingpage
*/

import 'package:flutter/material.dart';
import 'package:projectakhir/constant.dart';
import 'package:projectakhir/beranda/beranda_view.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

/*
ini adalah kelas yg digunakan untuk membuathalaman launcher 
dengan gambar angry bird ketika aplikasi pertama kali dijalankan. 
*/
class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
  ];

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation()
    );
  }
  Widget _buildBottomNavigation(){
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        setState((){
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.home,
            color: Warnadesain.green,
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text('Beranda'),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.assignment,
            color: Warnadesain.green,
          ),
          icon: new Icon(
            Icons.assignment,
            color: Colors.grey,
          ),
          title: new Text('Pesanan'),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.mail,
            color: Warnadesain.green,
          ),
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          title: new Text('Kotak Masuk'),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: Warnadesain.green,
          ),
          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: new Text('Akun'),
        ),

      ],
    );
  }
}
