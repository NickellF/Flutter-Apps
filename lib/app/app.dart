import 'package:flutter/material.dart';
import 'package:kasir_super/app/routes.dart';
import 'package:kasir_super/core/core.dart';
import 'package:kasir_super/features/settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasir Cintra',
      theme: LightTheme(AppColors.green).theme,
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
        onGenerateRoute:routes,
    ); 
  }
}
