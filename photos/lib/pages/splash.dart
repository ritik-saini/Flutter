import 'package:flutter/material.dart';
import 'package:photos/pages/choose.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset('assets/splash.png'),
        duration: 1000,
        nextScreen: Choose(),
        splashTransition: SplashTransition.rotationTransition,
        splashIconSize: 100.0,
      ),
    );
  }
}
