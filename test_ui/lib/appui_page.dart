import 'package:flutter/material.dart';
import 'data.dart';

class AppUIPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App UI Demo'),
      ),
      body: Container(
        // padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: ListView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index){
            return CarouselItem(index: index);
          },
        ),
    ),);
  }
}

class CarouselItem extends StatelessWidget {
  CarouselItem({this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
      child: SizedBox( 
        width: 230.0,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0,
                  )],
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(images[0]),
                ),
              ],
            ), 
          ],
        ),
      )
    );
  }
}