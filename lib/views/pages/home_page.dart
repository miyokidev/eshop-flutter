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
    return DefaultTabController(
      length: 4,
          child: Scaffold(
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        color: Colors.red,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(child: Container()),
              TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Text("eS"),
                  Icon(
                    Icons.search
                    ),
                  Icon(
                    Icons.favorite_border,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
        backgroundColor: Colors.red,
        body: TabBarView(
          children: [
            Center(
              child: Text(
                    "Home " + widget.gender + " Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: data.size.width * 16 / OPP7ScreenWidth,
                    ),
                  ),
            ),
            Center(
              child: Text(
                    "Home " + widget.gender + " Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: data.size.width * 16 / OPP7ScreenWidth,
                    ),
                  ),
            ),
            Center(
              child: Text(
                    "Home " + widget.gender + " Favorite",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: data.size.width * 16 / OPP7ScreenWidth,
                    ),
                  ),
            ),  
            Center(
              child: Text(
                    "Home " + widget.gender + " Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: data.size.width * 16 / OPP7ScreenWidth,
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}