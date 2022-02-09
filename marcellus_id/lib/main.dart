import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: idwith(),
  ));
}

class idwith extends StatefulWidget {
  @override
  _idwithState createState() => _idwithState();
}

class _idwithState extends State<idwith> {
  int level = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Marcellus'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {

          setState(() {
            if (level < 12) {
              level += 1;
            }
            else{
              level =1;
            }
          });
        },
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images.jpeg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 2.0, fontSize: 12.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'The Warrior',
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'TECHNOLOGY',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 2.0, fontSize: 12.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Flutter',
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'LEVEL',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 2.0, fontSize: 12.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$level',
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[900],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'thewarrior@marcellus.com',
                  style: TextStyle(
                      color: Colors.amber,
                      letterSpacing: 1.0,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
