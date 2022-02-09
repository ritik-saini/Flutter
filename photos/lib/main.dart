import 'package:flutter/material.dart';
import 'package:photos/pages/choose.dart';
import 'package:photos/pages/splash.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.bottom,
  ]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Splash(),
    },
  ));
}
