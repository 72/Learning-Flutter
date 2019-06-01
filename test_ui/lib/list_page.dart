import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Demo'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: SafeArea(
          bottom: false,
          child: ListView(
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.pink[100],
                child: Center(child: Text("First Item")),
              ),
              Container(
                height: 50,
                color: Colors.pink[200],
                child: Center(child: Text("Second Item")),
              ),
              Container(
                height: 50,
                color: Colors.pink[50],
                child: Center(child: Text("Third Item")),
              ),
              Container(
                height: 50,
                color: Colors.pink[200],
                child: Center(child: Text("Fourth Item")),
              ),
              Container(
                height: 50,
                color: Colors.pink[100],
                child: Center(child: Text("Fifth Item")),
              ),
              Container(
                height: 50,
                color: Colors.pink[50],
                child: Center(child: Text("Sixth Item")),
              ),
              Container(
                height: 50,
                color: Colors.pink[100],
                child: Center(child: Text("Seventh Item")),
              ),
              Container(
                height: 50,
                color: Colors.pink[50],
                child: Center(child: Text("Eighth Item")),
              ),
            ]
            ,)
        )
      ),
    );
  }
}