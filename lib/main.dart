import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './core/init.dart';
import './core/remote/admob/intersitial.dart';
import './core/theme/theme.dart';
import './core/theme/theme_service.dart';

void main() async {
  await initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntAdWidget(),
      theme: CustomTheme().ligthTheme,
      darkTheme: CustomTheme().darkTheme,
      themeMode: ThemeService().getThemeMode(),
    );
  }
}
