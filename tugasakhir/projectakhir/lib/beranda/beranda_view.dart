import 'package:flutter/material.dart';
import 'package:projectakhir/beranda/beranda_appbar.dart';
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
      body: new Container(),
     )
     );
  
  }
}

// class CarouselWithIndicator extends StatefulWidget {
//   @override
//   _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
// }

  // class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {

// int _current = 0;

  // @override
  // Widget build(BuildContext context) {
  //   return Stack(
  //     children: [
  //       CarouselSlider(
  //         items: child,
  //         autoPlay: true,
  //         aspectRatio: 2.0,
  //         onPageChangedCallback: (index) {
  //           setState(() {
  //             _current = index;
  //           });
  //         },
  //       ),
  //       Positioned(
  //         top: 0.0,
  //         left: 0.0,
  //         right: 0.0,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: map<Widget>(imgList, (index, url) {
  //             return Container(
  //               width: 8.0,
  //               height: 8.0,
  //               margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
  //               decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
  //               ),
  //             );
  // //           }),
  //         )
  //       )
  //     ]
  //   );