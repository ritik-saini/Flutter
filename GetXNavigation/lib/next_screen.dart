import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Text(
          "This is Next screen",
          style: TextStyle(color: Colors.deepPurple, fontSize: 30),
        ),
      ),
    );
  }
}
