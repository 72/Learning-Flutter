import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
	
	final String text;
	final AnimationController animationController;
  final String name;

	ChatMessage({this.text, this.animationController, this.name});

	@override
	Widget build(BuildContext context){
		return SizeTransition(
			sizeFactor: CurvedAnimation(parent: animationController, curve: Curves.easeOut),
			axisAlignment: 0.0,
			child: Container(
				margin: const EdgeInsets.symmetric(vertical: 10.0),
				child:
					SafeArea(
						top: false,
						bottom: false,
						child: Row(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: <Widget>[
								Container(
									margin: const EdgeInsets.only(right: 16.0),
									child: CircleAvatar(child: Text(name[0])),
								),
								Expanded(
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
											Text(name, style: Theme.of(context).textTheme.subhead),
											Container(
												margin: EdgeInsets.only(top: 5.0),
												child: Text(text),
											)
										],
									),
								)
							],
						)
					)
				),
			);
	}
}