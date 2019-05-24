import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import './chat_screen.dart';


final ThemeData kIOSTheme = new ThemeData(
	primarySwatch: Colors.orange,
	primaryColor: Colors.grey[100],
	primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
	primarySwatch: Colors.pink,
	accentColor: Colors.orangeAccent[400],
);

void main() => runApp(ChatDemo());

class ChatDemo extends StatelessWidget {
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Chat Demo',
			theme: defaultTargetPlatform == TargetPlatform.iOS
				? kIOSTheme
				: kDefaultTheme,
			// theme: ThemeData(
			// 	primarySwatch: Colors.pink,
			// ),
			home: ChatScreen(),
		);
	}
}
