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
    final data = MediaQuery.of(context);
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                print("Settings pressed");
              },
              child: Column(
                children: [
                  Text(
                    "SHOP FROM",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Text(
                    Platform.localeName + ", " + getCurrency(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Button(
            "Men",
            data.size.width / 2.5,
            data.size.height / 24,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Button(
            "Women",
            data.size.width / 2.5,
            data.size.height / 24,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Button(
            "Kids",
            data.size.width / 2.5,
            data.size.height / 24,
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                print("Settings pressed");
              },
              child: Column(
                children: [
                  Text(
                    "SHOP FROM",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Text(
                    "United States, " + getCurrency(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
              Button(
                "Men",
                data.size.width / 4,
                data.size.height / 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
              ),
              Button(
                "Women",
                data.size.width / 4,
                data.size.height / 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
              ),
              Button(
                "Kids",
                data.size.width / 4,
                data.size.height / 12,
              ),
            ],
          )
        ],
      );
    }
  }
}

class Button extends StatelessWidget {
  final String title;
  final double width;
  final double height;

  Button(this.title, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
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
