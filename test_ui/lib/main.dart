import 'package:flutter/material.dart';

import './header.dart';
import './section_top.dart';
import './demo_list.dart';

void main() => runApp(MaterialApp(
	theme: _themeTwo(),
	home: UIApp(),
	debugShowCheckedModeBanner: false,
	// routes: <String, WidgetBuilder>{
	// 	'/a': (BuildContext context) => CardUIPage(),
	// },
));

class UIApp extends StatefulWidget{
	@override
	_UIAppState createState() => _UIAppState();
}

class _UIAppState extends State<UIApp> {
	@override
	Widget build(BuildContext context){
		return Scaffold(
			//backgroundColor: Color(0xFF2d3447),
			//backgroundColor: Theme.of(context).backgroundColor,
			body: Column(
					children: <Widget>[
						Header(),
						SectionTop(),
						Divider(),
						DemoList(),
					],
				),
		);
	}
}

_themeOne() =>
	ThemeData(
		fontFamily: 'Rubik', 
		brightness: Brightness.dark,
		//primaryColor: Color.fromRGBO(30, 30, 30, 1),
		//backgroundColor: Color.fromRGBO(30, 30, 30, 1),
		//scaffoldBackgroundColor: Color.fromRGBO(30, 30, 30, 1),
	);

_themeTwo() =>
	ThemeData(
		// Brightness and Colors
		brightness: Brightness.light,
		//primaryColor: Color.fromRGBO(30, 75, 90, 1),
		primaryColor: Colors.white,
		accentColor: Colors.pink,
		//backgroundColor: Color.fromRGBO(130, 130, 130, 1),
		//scaffoldBackgroundColor: Color.fromRGBO(30, 30, 30, 1),
		// FontFamily
		fontFamily: 'Rubik', 
		// Text Theme
		textTheme: TextTheme(
			headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
			title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
			body1: TextStyle(fontSize: 14.0),
		)
	);