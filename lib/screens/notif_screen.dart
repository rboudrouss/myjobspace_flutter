import 'package:flutter/material.dart';
import 'package:myjobspace/widgets/widgets.dart';
import 'package:myjobspace/models/models.dart';

class NotifScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar("Notification"),
      bottomNavigationBar: NavigationBarAll(2),
      body: BodyNotif(),
    );
  }
}

class BodyNotif extends StatefulWidget {
  @override
  _BodyNotifState createState() => _BodyNotifState();
}

class _BodyNotifState extends State<BodyNotif> {
  _settingModalBottomSheet(context, comments) {
    void fonc() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 200,
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (BuildContext context, int index) {
                String smaller(String content) {
                  int maxCaracters = 45;
                  if (content.length > maxCaracters) {
                    content = content.substring(0, maxCaracters) + "...";
                    return content;
                  } else {
                    return content;
                  }
                }

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            comments[index].user.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Text(smaller(comments[index].content)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(comments[index].likes.toString()),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              comments[index].liked = !comments[index].liked;
                              if (comments[index].liked) {
                                comments[index].likes += 1;
                              } else {
                                comments[index].likes -= 1;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.thumb_up,
                            color: (comments[index].liked
                                ? Colors.blue
                                : Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          );
        },
      );
    }

    return fonc;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: notifs.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                crossAxisAlignment: (notifs[index].hasimage
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(notifs[index].user.imageUrl),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          notifs[index].user.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      notifs[index].content,
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 1.2,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  (notifs[index].hasimage
                      ? Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/notif_img.jpg'),
                              //TODO change the image
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : SizedBox.shrink()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {},
                      ),
                      Row(
                        children: <Widget>[
                          Text(notifs[index].nbcomments.toString()),
                          IconButton(
                            icon: Icon(Icons.mode_comment),
                            onPressed: _settingModalBottomSheet(
                              context,
                              notifs[index].comments,
                            ),
                          ),
                          Text(notifs[index].likes.toString()),
                          IconButton(
                            icon: Icon(
                              Icons.thumb_up,
                              color: notifs[index].liked
                                  ? Colors.blue
                                  : Colors.black,
                            ),
                            //TODO find a heart
                            onPressed: () {
                              setState(() {
                                notifs[index].liked = !notifs[index].liked;
                                if (notifs[index].liked) {
                                  notifs[index].likes += 1;
                                } else {
                                  notifs[index].likes -= 1;
                                }
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
