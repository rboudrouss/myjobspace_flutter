import 'package:flutter/material.dart';
import 'package:myjobspace/models/models.dart';
import 'offerslist_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeScaffold();
  }
}

class HomeScaffold extends StatefulWidget {
  @override
  _HomeScaffoldState createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  @override
  Widget build(BuildContext context) {
    Widget appBarTitle = new Text(
      "Offres",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
      ),
    );
    Icon actionIcon = new Icon(Icons.search);

    return Scaffold(
      body: BodyHome(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: appBarTitle,
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(
                //TODO see why this is not working
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
                    appBarTitle = Text("AppBar Title");
                  }
                },
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            title: Text("Offres"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profil"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notifications"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text("Chat"),
          ),
        ],
      ),
    );
  }
}

class BodyHome extends StatefulWidget {
  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    num nbworkoffers = workoffers.length;
    num nbinteroffers = internoffers.length;

    Function click(type) {
      void fonc() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => (type == 0)
                ? OfferListScreen(workoffers, "Work")
                : OfferListScreen(internoffers, "Offers"),
          ),
        );
      }

      return fonc;
    }

    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          child: GestureDetector(
            onTap: click(0),
            child: Stack(
              children: <Widget>[
                // background image
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 - 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/hired_img.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // text "stage"
                Positioned(
                  bottom: 120,
                  left: 30,
                  child: Text(
                    "Offres d'emplois",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                // text nb articles
                Positioned(
                  bottom: 100,
                  left: 35,
                  child: Text(
                    "$nbworkoffers Articles",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Stages
        Positioned(
          top: 0,
          child: GestureDetector(
            onTap: click(1),
            child: Stack(
              children: <Widget>[
                // background image
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/login_img.jpg'),
                      //TODO change the image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // text "stage"
                Positioned(
                  bottom: 120,
                  left: 30,
                  child: Text(
                    "Stages",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                // text nb articles
                Positioned(
                  bottom: 100,
                  left: 35,
                  child: Text(
                    "$nbinteroffers Articles",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
            ),
          ),
        ),
        SizedBox.expand(),
      ],
    );
  }
}
