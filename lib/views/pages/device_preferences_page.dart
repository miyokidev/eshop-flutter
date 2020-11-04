import 'package:flutter/material.dart';
import 'package:flutter_eshop_app/controllers/preferences_orientation.dart';

class DevicePreferencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          OrientationDeviceOptions(),
        ],
      ),
    );
  }
}
