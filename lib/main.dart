import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_f1/app/app_widget.dart';

void main() {
  runZonedGuarded(() {
    runApp(const AppWidget());
  }, (error,stack) {
    debugPrint('Erro: $error');
    debugPrint('Stack: $stack');
  });
}
