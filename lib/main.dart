import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hello_f1/app/app_module.dart';
import 'package:hello_f1/app/app_widget.dart';

void main() {
  runZonedGuarded(
    () {
      runApp(ModularApp(module: AppModule(), child: AppWidget()));
    },
    (error, stack) {
      debugPrint('Erro: $error');
      debugPrint('Stack: $stack');
    },
  );
}
