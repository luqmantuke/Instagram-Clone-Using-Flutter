import 'package:flutter/material.dart';
import 'package:instatuke/widgets/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 13.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: Container(
        child: InstaBody(),
      ),
      bottomNavigationBar: new Container(
        height: 50.0,
        color: Colors.white,
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          new IconButton(icon: Icon(Icons.home), onPressed: () => {}),
          new IconButton(icon: Icon(Icons.search), onPressed: null),
          new IconButton(icon: Icon(Icons.add_box), onPressed: null),
          new IconButton(icon: Icon(Icons.favorite), onPressed: null),
          new IconButton(icon: Icon(Icons.account_box), onPressed: null),
        ],
      )),
    );
  }
}
