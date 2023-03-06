import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator AuthScreen - FRAME - HORIZONTAL
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFFFFE3A9), Color(0xFF73CAF2)],
          transform: GradientRotation(120.2),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/piggy_dotted.png"),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 58,
                  width: 124,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF40DF9F))),
                      onPressed: () => Get.toNamed("/auth/signup"),
                      child: Text("Sign Up")),
                ),
                Text("OR"),
                SizedBox(
                  height: 58,
                  width: 124,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF40DF9F))),
                      onPressed: () => Get.toNamed("/auth/login"),
                      child: Text("Login")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
