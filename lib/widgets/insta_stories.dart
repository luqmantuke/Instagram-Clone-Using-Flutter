import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: [
          new Icon(Icons.play_arrow),
          Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ],
  );
  final stories = Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) =>
      new Stack(
        alignment: Alignment.bottomRight,
        children: [
          new Container(
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new AssetImage("assets/images/luqman.jpg"),
              ),
            ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0)

          ),
          (index==0) ? Positioned(
            right:10.0,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: new Icon(Icons.add, size: 14, color: Colors.white,
            ),
          )) : Container(

          )
        ],
      )

    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
