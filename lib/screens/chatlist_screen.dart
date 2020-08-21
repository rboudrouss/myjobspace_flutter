import 'package:flutter/material.dart';
import 'package:myjobspace/widgets/navigationbar_widget.dart';
import 'package:myjobspace/widgets/seachappbar_widget.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar("Chat"),
      bottomNavigationBar: NavigationBarAll(3),
      body: BodyChatList(),
    );
  }
}

class BodyChatList extends StatefulWidget {
  @override
  _BodyChatListState createState() => _BodyChatListState();
}

class _BodyChatListState extends State<BodyChatList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
