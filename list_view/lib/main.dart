import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring List Widget",
    home: Scaffold(
        appBar: AppBar(
          title: Text("Basic List View"),
        ),
        body: getListView()),
  ));
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          Fluttertoast.showToast(
              msg: "Landscape",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black54,
              textColor: Colors.white,
              fontSize: 10.0);
        },
      ),
      ListTile(
        leading: Icon(Icons.wallpaper),
        title: Text("Wallpaper"),
        trailing: Icon(Icons.ac_unit),
        onTap: () {
          Fluttertoast.showToast(
              msg: "Wallpaper",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM);
        },
      ),
      ListTile(
        leading: Icon(Icons.phone_android),
        title: Text("Phone"),
        trailing: Icon(Icons.image),
        onTap: () {
          Fluttertoast.showToast(
              msg: "Phone",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM);
        },
      )
    ],
  );
  return listView;
}
