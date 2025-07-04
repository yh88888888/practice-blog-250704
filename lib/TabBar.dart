import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TabBarExample());
  }
}

class TabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        endDrawer: Container(),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text('TabBar'),
        ),
        body: Column(
          children: [
            Container(height: 300, color: Colors.yellow),
            TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.cloud_outlined)),
                Tab(icon: Icon(Icons.beach_access_sharp)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(child: Text("It's a cloudy here")),
                  Center(child: Text("It's a rainy here")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
