import 'package:flutter_web/material.dart';

class ItemAppBar extends StatelessWidget {
  String _name;

  ItemAppBar(String name) {
    _name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: FlatButton(
          onPressed: () {},
          child: Text(_name,
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ));
  }
}
