import 'package:flutter/material.dart';

class ProfilOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final int type;

  const ProfilOption({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color fillColor;
    Color titleColor;
    Color subtitleColor;
    switch (type) {
      case 0:
        {
          fillColor = Colors.deepPurple[700];
          titleColor = Colors.white;
          subtitleColor = Colors.grey[300];
          break;
        }
      case 1:
        {
          fillColor = Colors.white70;
          titleColor = Colors.black;
          subtitleColor = Colors.grey[700];
          break;
        }
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.all(Radius.circular(70)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.note_add_outlined),
                onPressed: () {},
              ),
              ClipRect(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      this.subtitle,
                      style: TextStyle(
                        color: subtitleColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.block_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.check_circle_outline),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
