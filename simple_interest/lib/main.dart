import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Simple Interest Calculator App',
    home: SIForm(),
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        accentColor: Colors.indigoAccent),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {

  var _formkey = GlobalKey<FormState>();

  var _currencies = ["Rupees", "Dollars", "Pounds"];
  var _currentItemSelected = "Rupees";
  final _minimumpadding = 50.0;
  TextEditingController principalControlled = TextEditingController();
  TextEditingController rateControlled = TextEditingController();
  TextEditingController termControlled = TextEditingController();
  var displayResults = "";

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      //resizeToAvoidBottomInset: false,   {avoid bottom margin error}
      appBar: AppBar(
        title: Text('Simple Interest Calculator'),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
            padding: EdgeInsets.all(_minimumpadding / 2),
            child: ListView(
              //use container for single page screen otherwise listview
              children: <Widget>[
                getImageAssets(),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumpadding / 10,
                        bottom: _minimumpadding / 10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      controller: principalControlled,
                      validator: (String value){
                        if (value.isEmpty){
                          return "Please enter principal amount";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Principal',
                          hintText: 'Enter Principal e.g. 12000',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumpadding / 10,
                        bottom: _minimumpadding / 10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      controller: rateControlled,
                      validator: (String value){
                        if (value.isEmpty){
                          return "Please enter rate of interest";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Rate of Interest',
                          hintText: 'In Percent',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumpadding / 10,
                        bottom: _minimumpadding / 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          controller: termControlled,
                          validator: (String value){
                            if (value.isEmpty){
                              return "Please enter the term";
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Term',
                              hintText: 'In year',
                              labelStyle: textStyle,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        )),
                        Container(width: _minimumpadding / 8),
                        Expanded(
                            child: DropdownButton<String>(
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: textStyle,
                                ));
                          }).toList(),
                          value: _currentItemSelected,
                          onChanged: (String newValueSelected) {
                            _onDropDownItemSelected(newValueSelected);
                          },
                        ))
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumpadding / 10,
                        bottom: _minimumpadding / 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          textColor: Theme.of(context).primaryColorDark,
                          child: Text(
                            'Calculate',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_formkey.currentState.validate()) {
                                this.displayResults = _calculateTotalReturns();
                              }
                            });
                          },
                        )),
                        Expanded(
                            child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text(
                            'Reset',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              _reset();
                            });
                          },
                        ))
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.all(_minimumpadding / 5),
                    child: Text(
                      displayResults,
                      style: textStyle,
                    )),
              ],
            )),
      ),
    );
  }

  Widget getImageAssets() {
    AssetImage assetImage = AssetImage('images/maxresdefault.jpg');
    Image image = Image(
      image: assetImage,
      width: 370,
      height: 125,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumpadding / 2.5),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalControlled.text);
    double rate = double.parse(rateControlled.text);
    double term = double.parse(termControlled.text);

    double totalAmountPayable = principal + (principal * rate * term) / 100;
    String results =
        "After $term years, your investment will be worth $totalAmountPayable $_currentItemSelected";
    return results;
  }

  String _reset() {
    principalControlled.text = "";
    rateControlled.text = "";
    termControlled.text = "";
    displayResults = "";
    _currentItemSelected = _currencies[0];
  }
}
