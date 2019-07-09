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
                    if (!ResponsiveLayout.isSmallScreen(context))
                    Container(
                      margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                      child: Text("Kazuki Chigita's Portfolio"),
                    )
                    else
                    Container(
                      margin: const EdgeInsets.only(left: 24.0, right: 24.0),
                      child: Text("Portfolio"),
                    )
                  ],
                ),
                Spacer(),
                if (ResponsiveLayout.isMediumScreen(context) || ResponsiveLayout.isLargeScreen(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ItemAppBar(name: "Profile"),
                    ItemAppBar(name: "Project"),
                    ItemAppBar(name: "Publication"),
                    ItemAppBar(
                      name: "Blog",
                      onPressed: () => {
                        window.open("https://chigichan24.hatenablog.com", 'tab')
                      }),

                  ],
                )
                else
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              title: Text("Portfolio Contents"),
                              children: <Widget>[
                                SimpleDialogOption(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("Profile"),
                                ),
                                SimpleDialogOption(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("Project"),
                                ),
                                SimpleDialogOption(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("Publication"),
                                ),
                                SimpleDialogOption(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    window.open("https://chigichan24.hatenablog.com", 'tab');
                                  },
                                  child: Text("Blog"),
                                )
                              ],
                            );
                          }
                        );
                      },
                      padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
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
