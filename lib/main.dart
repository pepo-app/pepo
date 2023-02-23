import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepo/screens/add_piggy_bank.dart';
import 'package:pepo/screens/auth/auth.dart';
import 'package:pepo/screens/auth/login.dart';
import 'package:pepo/screens/deposit_screen.dart';
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
        GetPage(name: "/home", page: () => HomeScreen()),
        GetPage(name: "/auth", page: () => AuthScreen()),
        GetPage(name: "/auth/login", page: () => LoginScreen()),
        GetPage(name: "/piggy/add", page: () => AddPiggyBankScreen()),
        GetPage(name: "/deposit", page: () => DepositScreen()),
      ],
      theme: ThemeData(useMaterial3: true),
    );
  }
}
