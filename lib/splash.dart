import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:splash/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              LottieBuilder.asset(
                "asset/splash_animation.json",
                height: 400,
                width: 700,
              )
            ])
          ],
        ),
        nextScreen: const MyHomePage(title: 'Home page'),
        splashIconSize: 20,
      ),
    );
  }
}
