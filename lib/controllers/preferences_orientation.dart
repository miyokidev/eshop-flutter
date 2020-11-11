import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';

const double OPP7ScreenWidth = 411.42857142857144;
const double OPP7ScreenHeight = 835.4285714285714;

class OrientationDeviceOptions extends StatelessWidget {
  String getCurrency() {
    var format = NumberFormat.simpleCurrency(locale: Platform.localeName);
    //var format = NumberFormat.simpleCurrency(locale: "en_GB"); // Grande Bretagne
    //var format = NumberFormat.simpleCurrency(locale: "fr_CH"); // Suisse
    //var format = NumberFormat.simpleCurrency(locale: "th_TH"); // Thailande
    return format.currencySymbol + " " + format.currencyName;
  }

  String getCountryCode() {
    var currentLoc = Platform.localeName;
    var string = currentLoc.split("_");

    return string[1];
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Column(
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
                        fontSize: data.size.width * 64 / OPP7ScreenWidth,
                        color: Colors.white)),
                Text(
                  "What's your preferences ? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: data.size.width * 16 / OPP7ScreenWidth,
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      print("Settings pressed ");

                    },
                    child: Column(
                      children: [
                        Text(
                          "SHOP FROM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 16 / OPP7ScreenWidth),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          getCountryCode() + ", " + getCurrency(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 16 / OPP7ScreenWidth),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Button(
                  "Men",
                  data.size.width,
                  data.size.height,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Button(
                  "Women",
                  data.size.width,
                  data.size.height,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Button(
                  "Kids",
                  data.size.width,
                  data.size.height,
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
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
                        fontSize: data.size.width * 32 / OPP7ScreenWidth,
                        color: Colors.white)),
                Text(
                  "What's your preferences ? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: data.size.width * 8 / OPP7ScreenWidth,
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      print("Settings pressed ");
                    },
                    child: Column(
                      children: [
                        Text(
                          "SHOP FROM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 8 / OPP7ScreenWidth),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          "United States, " + getCurrency(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: data.size.width * 8 / OPP7ScreenWidth),
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
                      data.size.width,
                      data.size.height,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Button(
                      "Women",
                      data.size.width,
                      data.size.height,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                    ),
                    Button(
                      "Kids",
                      data.size.width,
                      data.size.height,
                    ),
                  ],
                )
              ],
            ),
          ),
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
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return SizedBox(
        width: width / 2.5,
        height: height / 24,
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
          child: Text(title,
              style: TextStyle(fontSize: width * 16 / OPP7ScreenWidth)),
          animationDuration: Duration(milliseconds: 100),
        ),
      );
    } else {
      return SizedBox(
        width: width / 4,
        height: height / 12,
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
          child: Text(title,
              style: TextStyle(fontSize: width * 8 / OPP7ScreenWidth)),
          animationDuration: Duration(milliseconds: 100),
        ),
      );
    }
  }
}
