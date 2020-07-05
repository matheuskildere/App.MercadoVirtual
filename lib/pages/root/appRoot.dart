
import 'package:AppMercadoVirtual/shared/routes/routes.dart';
import 'package:AppMercadoVirtual/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      initialRoute: '/',
      routes: routes,
    );
  }
}
