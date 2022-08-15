import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/app/app_widget.dart';

import 'app/app_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
