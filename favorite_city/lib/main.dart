import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful App Example",
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = "";
  var _currencies = ['Ruppes', 'Dolars', 'Pounds', 'Euros', 'Others'];
  var _currentSelectedItem = 'Ruppes';

  @override
  Widget build(BuildContext context) {
    debugPrint("Favorite City widget is created.");
    return Scaffold(
          appBar: AppBar(
            title: Text("Stateful App Example"),
          ),
//          resizeToAvoidBottomPadding: false,
          body: Container(
            child: SingleChildScrollView(child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    style: TextStyle(fontSize: 25.0, color: Colors.deepOrange),
//                onChanged: (String userInput) {
                    onSubmitted: (String userInput) {
                      setState(() {
                        debugPrint(
                            "setState() is called, this tells framework to redraw the FavCity widget.");
                        nameCity = userInput;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: DropdownButton<String>(
                    items: _currencies.map((String dropDownItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownItem,
                        child: Text(dropDownItem),
                      );
                    }).toList(),
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this._currentSelectedItem = newValueSelected;
                      });
                    },
                    value: _currentSelectedItem,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(35.0),
                  child: Text(
                    "You enter city is $nameCity",
                    style: TextStyle(fontSize: 20.0, color: Colors.teal),
                  ),
                )
              ],
            ),)
            ,
          ),
        );
  }
}
