import 'package:flutter_web/material.dart';
import 'item_app_bar.dart';
import 'dart:html';
import './../util/responsive_layout.dart';

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
                if (ResponsiveLayout.isLargeScreen(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ItemAppBar(name: "Project"),
                    ItemAppBar(name: "Publication"),
                    ItemAppBar(
                      name: "Blog",
                      onPressed: () => {
                        window.open("https://chigichan24.hatenablog.com", 'tab')
                      }),
                    ItemAppBar(name: "Profile")
                  ],
                )
                else
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: null,
                      padding: EdgeInsets.all(12.0),
                      child: Image.asset("menu.png",width: 24, height: 24)
                    )
                  ],
                )
              ],
            )
            ],
        ));
  }
}
