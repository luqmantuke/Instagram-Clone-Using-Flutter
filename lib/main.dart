import 'package:flutter/material.dart';
import './screens/insta_home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Tuke',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: Colors.black,
       primaryIconTheme: IconThemeData(color: Colors.black),
       primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
       textTheme: TextTheme(title: TextStyle(color: Colors.black, fontFamily: "Aveny",),
       ),
      ),
      home: InstaHome()
    );
  }
}
