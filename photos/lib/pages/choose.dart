import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Choose extends StatefulWidget {
  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          flexibleSpace: ClipRRect(
            borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(100.0)),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bar.jpg'), fit: BoxFit.fill)),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(100.0))),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 15.0),
                      child: Text('Photo Editor',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontFamily: 'Itim')),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200.0,),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.white, width: 12.0),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    color: Colors.white),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox.fromSize(
                    size: Size(100, 100), // button width and height
                    child: ClipOval(
                      child: Material(
                        color: Colors.deepOrange, // button color
                        child: InkWell(
                          splashColor: Colors.blue[800], // splash color
                          onTap: () {}, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.image_search,
                                size: 40.0,
                                color: Colors.white,
                              ), // icon
                              Text(
                                "Edit",
                              ), // text
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  SizedBox.fromSize(
                    size: Size(100, 100), // button width and height
                    child: ClipOval(
                      child: Material(
                        color: Colors.deepOrange, // button color
                        child: InkWell(
                          splashColor: Colors.blue[800], // splash color
                          onTap: () {}, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.dashboard_customize,
                                size: 40.0,
                                color: Colors.white,
                              ), // icon
                              Text(
                                "Collage",
                              ), // text
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(height: 100.0,),
              Text("Created by Marcellus", style: TextStyle(color: Colors.white),)
            ],
          ),
        ));
  }
}
