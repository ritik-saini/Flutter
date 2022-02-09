import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15.0, top: 40.0),
//         alignment: Alignment.center,
        color: Colors.deepPurple,
//         width: 200,
//         height: 100,
//         margin: EdgeInsets.only(left: 20.0, top: 40.0),
//         margin: EdgeInsets.all(20.0),
//         padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "SpiceJet",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 30.0),
                )),
                Expanded(
                    child: Text(
                  "From Mumbai to Banglore",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 15.0),
                )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Air India",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 30.0),
                )),
                Expanded(
                    child: Text(
                  "From Jaipur to Goa",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 15.0),
                )),
              ],
            ),
            imageAssets(),
            FlightBookButton()
          ],
        ));
  }
}

class imageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ticket.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 250.0,
      height: 250.0,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70.0),
      width: 200.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Book your flight",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          elevation: 6.0,
          onPressed: () => bookFlight(context)
          ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Booking Confirm Successfully"),
      content: Text("Have a Pleasant Flight"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context)=> alertDialog
        );
  }
}
