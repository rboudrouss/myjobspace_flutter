import 'package:flutter/material.dart';

//TODO correct the title of the appbar

class SearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String titleContent;
  SearchAppBar(this.titleContent);

  Size get preferredSize => const Size.fromHeight(60);

  @override
  _SearchAppBarState createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  Widget appBarTitle = Text(
    "Stages",
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
    ),
  );
  Icon actionIcon = Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: appBarTitle,
      actions: <Widget>[
        IconButton(
          icon: actionIcon,
          onPressed: () {
            setState(
              () {
                if (actionIcon.icon == Icons.search) {
                  actionIcon = Icon(Icons.close);
                  appBarTitle = TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  );
                } else {
                  actionIcon = Icon(Icons.search);
                  appBarTitle = Text(
                    "Offres",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  );
                }
              },
            );
          },
        ),
      ],
    );
  }
}
