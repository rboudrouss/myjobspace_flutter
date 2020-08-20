import 'package:flutter/material.dart';
import 'package:myjobspace/widgets/widgets.dart';

//TODO listview blank/white case add container curved
//TODO optimiser le code

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
    return Scaffold(
      appBar: SearchAppBar(widget.title),
      bottomNavigationBar: NavigationBarAll(0),
      body: Container(
        child: ListView.builder(
          itemCount: widget.offerList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 8,
                    right: 8,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width - 130,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          widget.offerList[index].title,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.offerList[index].adress,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                widget.offerList[index].time,
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(widget.offerList[index].recent
                                  ? "Nouveau"
                                  : ""),
                              OutlineButton.icon(
                                onPressed: () {
                                  setState(() {
                                    widget.offerList[index].saved =
                                        !widget.offerList[index].saved;
                                  });
                                },
                                icon: Icon(widget.offerList[index].saved
                                    ? Icons.bookmark
                                    : Icons.bookmark_border),
                                label: Text('Save'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
