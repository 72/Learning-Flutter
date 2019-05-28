import 'package:flutter/material.dart';

import './card_ui_page.dart';
import './card_stack_page.dart';
import './tabs_page.dart';

class DemoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          FirstDemo(),
          SecondDemo(),
          ThirdDemo(),
        ],
      ),
    );
  }
}

class FirstDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      leading: Icon(Icons.format_shapes, color: Theme.of(context).accentColor),
      title: Text("Card UI",
          style: TextStyle(
            // color: Colors.white,
            fontSize: 16.0,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w300,
            letterSpacing: 1.0,
          )),
      trailing: Icon(Icons.arrow_forward),
      onTap: () => Navigator.push(context,
              MaterialPageRoute<void>(builder: (BuildContext context) {
            return CardUIPage();
          })),
    ));
  }
}

class SecondDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      leading: Icon(Icons.format_shapes, color: Theme.of(context).accentColor),
      title: Text("Card UI with Stack",
          style: TextStyle(
            // color: Colors.white,
            fontSize: 16.0,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w300,
            letterSpacing: 1.0,
          )),
      trailing: Icon(Icons.arrow_forward),
      onTap: () => Navigator.push(context,
              MaterialPageRoute<void>(builder: (BuildContext context) {
            return CardStackPage();
          })),
    ));
  }
}

class ThirdDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      leading: Icon(Icons.format_shapes, color: Theme.of(context).accentColor),
      title: Text("Header with Tabs",
          style: TextStyle(
            // color: Colors.white,
            fontSize: 16.0,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w300,
            letterSpacing: 1.0,
          )),
      trailing: Icon(Icons.arrow_forward),
      onTap: () => Navigator.push(context,
              MaterialPageRoute<void>(builder: (BuildContext context) {
            return TabsPage();
          })),
    ));
  }
}

// Text("Info",
// 				style: TextStyle(
// 					color: Colors.white,
// 					fontSize: 24.0,
// 					fontFamily: 'Rubik',
// 					fontWeight: FontWeight.w400,
// 					letterSpacing: 1.0,
// 				)),
