import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/app/shared/auth/auth_controller.dart';

import 'modules/home/home.dart';
import 'modules/home/home_controller.dart';
import 'modules/splash/splash_page.dart';

class AppModule extends Module {
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController()),
    Bind.lazySingleton((i) => AuthController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
    ChildRoute('/home', child: (_, args) => HomePage(title: "Teste")),
  ];
}
