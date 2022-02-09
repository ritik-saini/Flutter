import 'package:flutter/material.dart';
import 'package:paynav/components/homepage.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: RaisedButton(
          child: Text(
            'Dashboard',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.deepPurple[900],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        )),
      ),
    );
  }
}
