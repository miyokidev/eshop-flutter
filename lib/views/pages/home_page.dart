import 'package:flutter/material.dart';
import 'package:flutter_eshop_app/models/screen_sizes.dart';

class HomePage extends StatefulWidget {

  final String gender;

  HomePage(this.gender);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return DefaultTabController(
      length: 4,
          child: Scaffold(
        key: _scaffoldKey,
        endDrawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.red,
            textTheme: TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
              headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
              bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.white),
            ),
            ),
          child: Drawer(
            child: ListView(
              children: [
                Ink(
                  child: ListTile(
                    onTap: () {
                      print("1 pressed");
                  },
                    title: Text("1"),
                  ),
                ),
                Ink(
                  child: ListTile(
                    onTap: () {
                      print("2 pressed");
                  },
                    title: Text("2"),
                  ),
                ),
                Ink(
                  child: ListTile(
                    onTap: () {
                      print("3 pressed");
                  },
                    title: Text("3"),
                  ),
                ),
              ],
            )
          ),
        ),
        appBar: PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        color: Colors.red,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(child: Container()),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabBar(
                    isScrollable: true,
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
                InkWell(
                  onTap: () {
                    _scaffoldKey.currentState.openEndDrawer();
                  },
                  child: Icon(
                    Icons.person_pin,
                    color: Colors.white,
                      ),
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