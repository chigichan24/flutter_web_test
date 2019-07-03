import 'package:flutter_web/material.dart';


class ItemAppBar extends StatelessWidget {
  String name;
  VoidCallback onPressed;

  ItemAppBar({
    this.name,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: FlatButton(
          onPressed: onPressed,
          child: Text(name,
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ));
  }
}
