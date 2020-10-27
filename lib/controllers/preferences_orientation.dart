import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';

class OrientationDeviceOptions extends StatelessWidget {

  String getCurrency() {
      var format = NumberFormat.simpleCurrency(locale: Platform.localeName);
      //var format = NumberFormat.simpleCurrency(locale: "en_GB"); // Grande Bretagne
      //var format = NumberFormat.simpleCurrency(locale: "fr_CH"); // Suisse
      //var format = NumberFormat.simpleCurrency(locale: "th_TH"); // Thailande
      return format.currencySymbol + " " + format.currencyName;
    }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          print("appuyé");
                        },
                        child: Column(
                          children: [
                            Text(
                              "SHOP FROM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                            ),
                            Text(
                              "United States, " + getCurrency(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    Button("Men"),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Button("Women"),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Button("Kids"),
                  ],
                );
    }
    else {
      return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          print("appuyé");
                        },
                        child: Column(
                          children: [
                            Text(
                              "SHOP FROM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                            ),
                            Text(
                              "United States, " + getCurrency(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Button("Men"),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Button("Women"),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Button("Kids"),
                    ],)
                    
                  ],
                );
    }
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