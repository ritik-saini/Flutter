import 'package:flutter/material.dart';

class UnknownRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unknown Screen"),
      ),
      body: Center(
        child: Text(
          "This is Unknown Screen",
          style: TextStyle(color: Colors.deepPurple, fontSize: 30),
        ),
      ),
    );
  }
}
