import 'package:flutter/material.dart';
import 'package:market/page/produkdetailpage.dart';
import 'package:market/utility/constants.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
//    "/productDetail": (BuildContext context) =>
    Constants.ROUTE_PRODUCT_DETAIL: (BuildContext context) =>
        Produkdetailpage(),
  };
}