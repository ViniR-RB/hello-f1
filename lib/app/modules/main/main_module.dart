import 'package:flutter_modular/flutter_modular.dart';
import 'package:hello_f1/app/modules/main/pages/main_page.dart';
import 'package:hello_f1/app/modules/news/news_module.dart';
import 'package:hello_f1/app/modules/news/pages/news_page.dart';
import 'package:hello_f1/app/modules/profile/pages/profile_page.dart';
import 'package:hello_f1/app/modules/profile/profile_module.dart';

class MainModule extends Module {
  @override
  List<Module> get imports => [NewsModule(), ProfileModule()];

  @override
  void binds(Injector i) {}

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const MainPage(),
      children: [
        ChildRoute("/news", child: (context) => const NewsPage()),
        ChildRoute("/profile", child: (context) => const ProfilePage()),
      ],
    );
  }
}
