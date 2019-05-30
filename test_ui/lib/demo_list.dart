import 'package:flutter/material.dart';

import './card_ui_page.dart';
import './card_stack_page.dart';
import './tabs_page.dart';
import './list_page.dart';


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
        ],
      ),
    );
  }
}


class OptionListItem extends StatelessWidget {
  OptionListItem({this.title, this.goTo});

  final String title;
  final Widget goTo;
  
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
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return goTo;
                })),
      )),
    );
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
