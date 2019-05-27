import 'package:flutter/material.dart';

class CardStackPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Card Stack'),
			),
			body: CustomCard(),
		);
	}
}

class CustomCard extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
			height: 320,
			child: Stack(
			children: <Widget>[
				MainCardUI(),
				Badge(),
			]
		));
	}
}

class MainCardUI extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			child: Card(
				shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
				color: Colors.white,
				child: Column(children: <Widget>[
					 ClipRRect(
						borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
						child: Container(
							margin: EdgeInsets.only(left: 0.0, right: 0.0),
							height: 200,
							width: 600,
							child: Image.asset('assets/waterfall.jpg', fit: BoxFit.fitWidth,),
						),
					),
					Padding(
						padding: const EdgeInsets.only(top: 18.0),
						child: ListTile(
						title: Text('Card test',
						style: TextStyle(
							color: Colors.black87,
							fontSize: 14.0,
							fontFamily: 'Rubik',
							fontWeight: FontWeight.w400,
							// letterSpacing: 1.0,
						)),
						),
					)
				],)
			),
		);
	}
}

class Badge extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Align(
			alignment: Alignment.bottomCenter,
			child: Container(
				margin: EdgeInsets.only(bottom: 85.0),
				width: 60,
				height: 60,
				decoration: BoxDecoration(
					color: Colors.amber, 
					shape: BoxShape.circle,
					border: Border.all(width: 4.0, color: Colors.black12),
					),
			),
		);
	}
}
