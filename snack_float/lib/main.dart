import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.teal,
    title: "LongList Floating Snack",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
        backgroundColor: Colors.teal,
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Clicked",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM);
        },
        child: Icon(
          Icons.add,
        ),
        tooltip: "Add one more item",
      ),
    ),
  ));
}

void showSnackbar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Perform Undo Operation",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER);
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListElements() {
  var items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          showSnackbar(context, listItems[index]);
        },
      );
    },
    itemCount: listItems.length,
  );
  return listView;
}
