import 'package:flutter/material.dart';
import 'package:flutter_eshop_app/controllers/preferences_orientation.dart';

class DevicePreferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      "What's your preferences ? ",
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
