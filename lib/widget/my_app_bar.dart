import 'package:flutter_web/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
        title: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Text("Kazuki Chigita's Portfolio"),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Text("Project"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Text("Publication"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Text("Blog"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Text("Profile"),
                ),
              ],
            )
          ],
        ),
      ],
    ));
  }
}
