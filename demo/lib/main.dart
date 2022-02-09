import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Demo Application'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: <Widget>[
          Expanded(flex: 3, child: Image.asset('assets/space1.jpg')),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.deepPurple,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.green,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('3'),
            ),
          )
        ],

        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // children: <Widget> [
        //   Text('Hello World!'),
        //   FlatButton(onPressed: (){}, child: Text('Click'),color: Colors.amberAccent,),
        //   Container(
        //     color: Colors.cyanAccent,
        //     padding: EdgeInsets.all(25.0),
        //     child: Text('Container'),
        //   )
        // ],
      ),

      // IconButton(
      //   onPressed: (){
      //     print('You clicked me');
      //   },
      //   icon: Icon(Icons.alternate_email),
      //   color: Colors.deepOrange,
      // )
      //     RaisedButton.icon(
      //   onPressed: () {
      //     print('You Click me');
      //   },
      //   icon: Icon(Icons.mail),
      //   label: Text('Mail me'),
      //   color: Colors.amber,
      // )
      // FlatButton(
      //   onPressed: (){
      //     print('You Clicked me');
      //   },
      //   child: Text('click me',),
      //   color: Colors.lightBlue,
      // )
      // Icon(
      //   Icons.airport_shuttle_sharp,
      //   size: 50.0,
      //   color: Colors.deepPurple,
      // )
      // Image(
      //   image: AssetImage('assets/space1.jpg'),
      // ),
      //         ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.mail_outline_rounded,
        ),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
