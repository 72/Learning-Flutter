import 'package:flutter/material.dart';

class AppUIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App UI Demo'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Center(
          child: TextFormField(
            validator: (value){
              if(value.isEmpty){
                return "Enter text";
              }
            }
          )
      ),
    ),);
  }
}