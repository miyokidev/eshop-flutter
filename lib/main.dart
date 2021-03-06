import 'package:flutter/material.dart';
import 'package:flutter_eshop_app/views/pages/device_preferences_page.dart';
import 'package:flutter_eshop_app/views/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_eshop_app/models/screen_sizes.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  Future<bool> getUserPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var test = Future.delayed(Duration(seconds: 1), () {
      var checkValue = prefs.containsKey('devicePreferences');

      return checkValue;
    });

    return test;
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.red,
      body: FutureBuilder(
          future: getUserPreferences(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        flex: 2,
                        child: new Container(
                            child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("eShop",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: data.size.width * 64 / OPP7ScreenWidth,
                                    color: Colors.white))
                          ],
                        )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircularProgressIndicator(
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                  Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }

            if (snapshot.hasError) {
              return Center(
                child: Text("Error fetching data"),
              );
            }
            if (snapshot.hasData) {
              print(snapshot.data);
              return snapshot.data ? HomePage("Men") : DevicePreferencesPage();
            }

            return Container();
          }),
    );
  }
}
