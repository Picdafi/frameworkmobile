import 'package:flutter/material.dart';
import 'package:market/page/produklistpage.dart';
//import 'package:market/page/produkdetailpage.dart';
import 'package:market/utility/routes.dart';

//void main() {
//  runApp(
//    MaterialApp(
//      home: ProdukListPage(),
//      routes: Routes.routes,
//    ),
//  );
//}

//void main() {
//  runApp(MyApp)(
//    MaterialApp(
//      home: ProdukListPage(),
//      routes: Routes.routes,
//    ),
//  );
//}
//
//class MyApp {
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      home: ProdukListPage(),
//      routes: Routes.routes,
//
//    );
//  }
//}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ProdukListPage(),
      routes: Routes.routes,

    );
  }
}

//
//class Routes {
//  static final routes = <String, WidgetBuilder>{
////    "/productDetail": (BuildContext context) =>
//    Constants.ROUTE_PRODUCT_DETAIL: (BuildContext context) =>
//        Produkdetailpage(),
//  };
//}
//
//class Constants {
//  static const String ROUTE_PRODUCT_DETAIL = "/productDetail";
//}
//
