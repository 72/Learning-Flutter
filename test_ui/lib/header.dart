import 'package:flutter/material.dart';

class Header extends StatelessWidget {
	// const Header({
	// 	Key key,
	// }) : super(key: key);

	@override
	Widget build(BuildContext context) {
	return Padding(
		padding: EdgeInsets.only(
			left: 12.0, right: 12.0, top: 10.0, bottom: 8.0),
		child: SafeArea(
			bottom: false,
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: <Widget>[
				IconButton(
					icon: Icon(
						Icons.menu,
						size: 30.0,
					),
					onPressed: (){},
				),
				IconButton(
					icon: Icon(
						Icons.search,
						size: 30.0,
					),
					onPressed: (){},
				),
			],),
		),
	);
	}
}