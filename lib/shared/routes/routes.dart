
import 'package:AppMercadoVirtual/pages/camAr/camAR_page.dart';
import 'package:AppMercadoVirtual/pages/home/home_page.dart';
import 'package:AppMercadoVirtual/pages/product/productInfo_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => HomePage(),
  "productInfo": (BuildContext context) => ProductInfoPage(),
  "camAR": (BuildContext context) => CamARPage(),
};
