import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepo/screens/auth/auth.dart';
import 'package:pepo/screens/auth/login.dart';
import 'package:pepo/screens/splash.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pepo',
      initialRoute: "/splash",
      getPages: [
        GetPage(name: "/splash", page: () => const SplashScreen()),
        GetPage(name: "/home", page: () => const HomeScreen()),
        GetPage(name: "/auth", page: () => AuthScreen()),
        GetPage(name: "/auth/login", page: () => LoginScreen())
      ],
    );
  }
}
