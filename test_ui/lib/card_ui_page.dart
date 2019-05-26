import 'package:flutter/material.dart';

class CardUIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card UI'),
      ),
      body: Center(child: CustomCard()),
    );
  }
}


class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 90.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow (color: Colors.black26, blurRadius: 24.0)],
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
        ),
      child: SizedBox(
        height: 300,
        width: 240,
      ),
    );
  }
}
