import 'package:flutter/material.dart';

import './header.dart';
import './section_top.dart';
import './demo_list.dart';

void main() => runApp(MaterialApp(
	theme: ThemeData(fontFamily: 'Rubik', brightness: Brightness.dark),
	home: UIApp(),
	debugShowCheckedModeBanner: false,
));

class UIApp extends StatefulWidget{
	@override
	_UIAppState createState() => _UIAppState();
}

class _UIAppState extends State<UIApp> {
	@override
	Widget build(BuildContext context){
		return Scaffold(
			backgroundColor: Color(0xFF2d3447),
			body: Column(
					children: <Widget>[
						Header(),
						SectionTop(),
						Divider(color: Colors.white54,),
						DemoList(),
					],
				),
		);
	}
}

