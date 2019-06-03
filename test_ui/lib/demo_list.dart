import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './card_ui_page.dart';
import './card_stack_page.dart';
import './tabs_page.dart';
import './list_page.dart';
import './appui_page.dart';


class DemoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          OptionListItem( title: "Card UI", goTo: CardUIPage(), ),
          OptionListItem( title: "Card UI with Stack", goTo: CardStackPage(), ),
          OptionListItem( title: "Header with Tabs", goTo: TabsPage(), ),
          OptionListItem( title: "List", goTo: ListPage(), ),
          OptionListItem( title: "Unnamed App UI", goTo: AppUIPage(), ),
        ],
      ),
    );
  }
}


// Custom Widget: List Item
class OptionListItem extends StatelessWidget {
  // Initialization, constructor
  OptionListItem({this.title, this.goTo});
  final String title;
  final Widget goTo;
  

  /*
  ---
  Padding
    ListTile
      Icon, Text, Icon, onTap()
  ---
  The title and goTo props are passed down to Text and onTap respectively.
  */

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
          child: ListTile(
            leading: Icon(Icons.format_shapes, color: Theme.of(context).accentColor),
            title: Text(title,
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1.0,
                )),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Navigator.push(context,
                    CupertinoPageRoute<void>(builder: (BuildContext context) {
                  return goTo;
                })),
      )),
    );
  }
}

/*
MaterialPageRoute
vs
CupertinoPageRoute

These widgets implement the respetive native transition behavior of each OS. 
"Material" adapts on iOS to show the correct native transition (step to the right), however, on Android the transition is a fade/slide from the bottom, which doesn't seem to be ideal nor consistent with the behavior of a back button. 
Using "Cupertino" here ensures the transition matches on Android the transtition to the iOS one.
*/


// Text("Info",
// 				style: TextStyle(
// 					color: Colors.white,
// 					fontSize: 24.0,
// 					fontFamily: 'Rubik',
// 					fontWeight: FontWeight.w400,
// 					letterSpacing: 1.0,
// 				)),
