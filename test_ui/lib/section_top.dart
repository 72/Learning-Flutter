import 'package:flutter/material.dart';

class SectionTop extends StatelessWidget {
	// const SectionTop({
	// 	Key key,
	// }) : super(key: key);

	@override
	Widget build(BuildContext context) {
	return Padding(
		padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0, bottom: 0.0),
		child: Row(
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
			children: <Widget>[
				Text("Demos",
					style: TextStyle(
						color: Colors.white,
						fontSize: 46.0,
						fontFamily: 'Rubik',
						fontWeight: FontWeight.w300,
						letterSpacing: 1.0,
					)
				),
				Icon(
					Icons.code,
					color: Colors.white70,
					size: 24,
				)
			],
		)
	);
	}
}