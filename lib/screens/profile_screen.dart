import 'package:flutter/material.dart';
import 'package:myjobspace/widgets/navigationbar_widget.dart';
import 'package:myjobspace/widgets/seachappbar_widget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar("Profile"),
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
    return Container();
  }
}
