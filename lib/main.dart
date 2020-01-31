import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Navigation",
      home: new HalamanSatu(),
      routes: <String, WidgetBuilder>{
        '/HalamanSatu': (BuildContext context) => new HalamanSatu(),
        '/HalamanDua': (BuildContext context) => new HalamanDua(),
      }));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text("Home")),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.headset,
            size: 50,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanDua');
          },
        ),
      ),
    );
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text("Musik")),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.home,
            size: 50,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalamanSatu');
          },
        ),
      ),
    );
  }
}
