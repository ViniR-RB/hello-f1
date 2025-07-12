import 'package:flutter_modular/flutter_modular.dart';
import 'package:hello_f1/app/modules/main/main_module.dart';
import 'package:hello_f1/app/pages/splash_page.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => const [];

  @override
  void binds(Injector i) {}

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child("/", child: (context) => const SplashPage());
    r.module("/main", module: MainModule());
  }
}
