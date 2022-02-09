import 'package:flutter/material.dart';
import 'components/load.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
    },
  ));
}

