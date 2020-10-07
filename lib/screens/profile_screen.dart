import 'package:flutter/material.dart';
import 'package:myjobspace/models/user_model.dart';
import 'package:myjobspace/widgets/navigationbar_widget.dart';
import 'package:myjobspace/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          // filter icon
          IconButton(
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarAll(1),
      body: BodyProfil(),
    );
  }
}

class BodyProfil extends StatefulWidget {
  @override
  _BodyProfilState createState() => _BodyProfilState();
}

class _BodyProfilState extends State<BodyProfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // pricipal container
      child: Column(
        // pricipal column
        children: <Widget>[
          Container(
            color: Colors.purple,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // message
                    Column(
                      children: <Widget>[
                        // TODO change this to the number of messages
                        IconButton(
                          icon: Icon(Icons.message_rounded),
                          onPressed: () {},
                        ),
                        Text("Messages"),
                      ],
                    ),

                    // Current User
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage(currentUser.imageUrl),
                        ),
                        Text(
                          currentUser.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(currentUser.city),
                      ],
                    ),

                    // notification
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.notifications),
                          onPressed: () {},
                        ),
                        Text("Notification"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // interaction section
          Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ProfilOption(
                    title: "Voir le CV",
                    subtitle: "3 visiteurs",
                    type: 0,
                  ),
                  ProfilOption(
                    title: "Votre domaine",
                    subtitle: "Edit",
                    type: 1,
                  ),
                  ProfilOption(
                    title: "",
                    subtitle: "3 visiteurs",
                    type: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
