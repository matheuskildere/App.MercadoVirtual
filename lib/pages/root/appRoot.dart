import 'package:AppMercadoVirtual/pages/home/home_page.dart';
import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: colorTheme
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.w300,fontSize: 16, color: Colors.white),
          headline2: TextStyle(fontWeight: FontWeight.w100,fontSize: 11, color: Colors.white),
        )
      ),
    );
  }
}
