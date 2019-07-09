import 'package:flutter_web/material.dart';
import 'package:flutter_web/gestures.dart';
import 'dart:html';

import 'widget/my_app_bar.dart';
import './util/responsive_layout.dart';
import 'widget/item_title_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About chigichan24',
      theme: ThemeData(
        fontFamily: 'NotoSansCJK-Black',
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'About chigichan24'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: MyAppBar(),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (ResponsiveLayout.isLargeScreen(context))
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.white54,
              child: ListView(
                padding: const EdgeInsets.all(8.0),
                children: <Widget>[
                  ItemTitleSection(title: "Profile", icon_data: Icons.person),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      if (ResponsiveLayout.isLargeScreen(context))
                      Container(
                        margin: const EdgeInsets.only(left: 64, right: 32),
                        child: Image.asset("chigichan24.png", width: 160, height: 160),
                      )
                      else if(ResponsiveLayout.isLargeScreen(context))
                      Container(
                        margin: const EdgeInsets.only(left: 64, right: 32),
                        child: Image.asset("chigichan24.png", width: 160, height: 160),
                      )
                      else
                      Container(
                        margin: const EdgeInsets.only(left: 32, right: 32),
                        child: Image.asset("chigichan24.png", width: 160, height: 160),
                      ),
                      Container(
                        //margin: const EdgeInsets.only(right: 16),
                        child: Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Kazuki Chigita / 千北 一期",
                                style: TextStyle(fontSize: 22.0),
                              ),
                              Text("- Graduate student in computer sience at University of Tsukuba, Japan"),
                              Text("- Software Engineer(mostly Android application development)"),
                              Text("- Interested in complex software development / signal processing problem, which can resolved by compressed sensing"),
                              RichText(
                                text: TextSpan(
                                  text: ">>resume(pdf)",
                                  style: TextStyle(color: Colors.cyan, decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => window.open("https://drive.google.com/file/d/1L82nLq_IqddvcgWRMCxbVxusI0v_jEoj/view", 'tab')
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                  ItemTitleSection(title: "Career", icon_data: Icons.work),
                  ItemTitleSection(title: "Publication", icon_data: Icons.format_list_bulleted),
                  ItemTitleSection(title: "Links", icon_data: Icons.link),
                ],
              )
            )
          ),
          if(ResponsiveLayout.isLargeScreen(context))
          Expanded(
            flex: 2,
            child: Container(),
          )
        ],
      ),
    );
  }
}
