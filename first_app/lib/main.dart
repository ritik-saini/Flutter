import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';

void main() => runApp(myflutterapp());

class myflutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first screen",
      home: Scaffold(
        appBar: AppBar(title: Text("First Application"),),
        body: screen()
      )
    );
  }
}