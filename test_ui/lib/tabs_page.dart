import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom:TabBar(
            tabs: [
              Tab(icon: Icon(Icons.ac_unit)),
              Tab(icon: Icon(Icons.access_time)),
              Tab(icon: Icon(Icons.book)),
            ]
          ), 
          title: Text("Tabs Demo"),
        ),
        body: TabsDemo(),
      ),
    );
  }
}


class TabsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
            children: [
              Icon(Icons.ac_unit),
              Icon(Icons.access_time),
              Icon(Icons.book),
            ],
          );
  }
}