import 'package:flutter/material.dart';
import 'package:flutter_eshop_app/models/screen_sizes.dart';

class HomePage extends StatefulWidget {

  final String gender;

  HomePage(this.gender);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
                  "Home " + widget.gender,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: data.size.width * 16 / OPP7ScreenWidth,
                  ),
                ),
      ),
    );
  }
}