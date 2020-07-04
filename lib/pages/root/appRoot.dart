import 'package:AppMercadoVirtual/pages/home/home_page.dart';
import 'package:AppMercadoVirtual/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: themeData
    );
  }
}
