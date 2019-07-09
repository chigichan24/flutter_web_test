import 'package:flutter_web/material.dart';

class ItemTitleSection extends StatelessWidget {
  String title;
  IconData icon_data;

  ItemTitleSection({
    this.title,
    this.icon_data
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(top: 32.0, right: 8.0, bottom: 32.0),
            child: Icon(icon_data, size: 40.0)
        ),
        Container(
          margin: const EdgeInsets.only(left: 8.0, top: 32.0, bottom: 32.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ],
    );
  }
}