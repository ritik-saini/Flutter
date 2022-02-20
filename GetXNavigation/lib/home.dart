import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.deepPurple, fontSize: 30),
            ),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
                child: Text(
                  'Next Screen',
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.lightBlue,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed("/nextScreen");
                }),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
                child: Text(
                  'Back to Main',
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.lightBlue,
                textColor: Colors.white,
                onPressed: () {
                  Get.back();
                }),
          ],
        ),
      ),
    );
  }
}
