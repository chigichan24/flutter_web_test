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
    return Listener(
      onPointerEnter: (_) => print('pointer entered!'),
      child: Container(
          margin: const EdgeInsets.only(left: 1.0, right: 1.0),
          child: FlatButton(
            onPressed: onPressed,
            child: Text(name,
                style: TextStyle(color: Colors.white, fontSize: 14)),
          )),
    );
  }
}
