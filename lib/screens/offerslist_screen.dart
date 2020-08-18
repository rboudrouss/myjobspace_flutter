// TODO ne par faire comme ça, créer un widget qui remplace les deux "stages"/offres d'emploi. Pas un nouveau screen.

import 'package:flutter/material.dart';

class OfferListScreen extends StatefulWidget {
  final offerList;
  final title;

  OfferListScreen(this.offerList, this.title);

  @override
  _OfferListScreenState createState() => _OfferListScreenState();
}

class _OfferListScreenState extends State<OfferListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.title),
    );
  }
}
