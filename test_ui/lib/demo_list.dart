import 'package:flutter/material.dart';

import './card_ui_page.dart';

class DemoList extends StatelessWidget{
	@override
	Widget build(BuildContext context){
		return Expanded(
				child: ListView(
					children: <Widget>[
						FirstDemo(),
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
			leading: Icon(Icons.format_shapes, color: Colors.white70),
			title: Text("Card UI",
				style: TextStyle(
					color: Colors.white,
					fontSize: 16.0,
					fontFamily: 'Rubik',
					fontWeight: FontWeight.w300,
					letterSpacing: 1.0,
				)),
			trailing: Icon(Icons.arrow_forward, color: Colors.white70),
			onTap: () => Navigator.push(context, MaterialPageRoute<void>(
				builder: (BuildContext context) {
					return CardUIPage();
				}
			)),
			)
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