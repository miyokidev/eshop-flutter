import 'package:flutter/material.dart';
import 'package:flutter_eshop_app/controllers/preferences_orientation.dart';

class DevicePreferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 2,
                child: new Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("eShop",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 64,
                            color: Colors.white)),
                    Text(
                      "What's your preferences ? " +
                          deviceOrientation.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
              ),
              Expanded(
                flex: 1,
                child: OrientationDeviceOptions(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String title;

  Button(this.title);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 30,
      child: RaisedButton(
        onPressed: () {
          print(title + " pressed");
        },
        color: Colors.redAccent[700],
        highlightColor: Colors.red[900],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            side: BorderSide(color: Colors.red[900], width: 2)),
        textColor: Colors.white,
        child: Text(title),
        animationDuration: Duration(milliseconds: 100),
      ),
    );
  }
}
