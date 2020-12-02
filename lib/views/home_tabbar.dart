import 'package:flutter/material.dart';



class EShopTabBar extends StatelessWidget with PreferredSizeWidget {
  @override
    final Size preferredSize;

    final String title;

    EShopTabBar(
        this.title,
        { Key key,}) : preferredSize = Size.fromHeight(50.0),
            super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TabBar(
            isScrollable: true,
        tabs: [
          Tab(
            child: Text("eS"),
          ),
          Tab(
            child: Text("Search"),
          ),
        ],
          ),
    );
  }
}