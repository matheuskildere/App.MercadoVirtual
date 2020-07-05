import 'package:AppMercadoVirtual/pages/root/appRoot.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home/controller/home_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => HomeController(),
        ),
      ],
      child:AppRoot()
    )
  );
}
