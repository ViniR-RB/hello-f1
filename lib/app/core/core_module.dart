import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  List<Module> get imports => const [];

  void binds(Injector i) {}
  void exportedBinds(Injector i) {}

  void routes(RouteManager r) {}
}
