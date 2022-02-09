import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'Header_components/header_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple[900],
        child: Stack(
          children: [
            HeaderWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 105),
              child: Container(
                  child: Text("Jay Sethi", style: TextStyle(fontSize: 24, color: Colors.white),)
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 130),
              child: Container(
                        child: Text("reachjaysethi-1@oksbi", style: TextStyle(fontSize: 10, color: Colors.white),)
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(260, 90, 20, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/image.png"),
                radius: 40.0,
              )
            ),

          ],
        ),
      ),
    );
  }
}
