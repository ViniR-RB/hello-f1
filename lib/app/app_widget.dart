import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hello_f1/app/core/theme/blue_theme.dart';

class AppWidget extends StatelessWidget {

  const AppWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return MaterialApp.router(
        title: 'Hello F1',
        theme: blueTheme,
        routerConfig: Modular.routerConfig,
        debugShowCheckedModeBanner: false,
       );
  }
}