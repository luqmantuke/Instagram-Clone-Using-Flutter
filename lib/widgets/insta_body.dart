import 'package:flutter/material.dart';
import 'package:instatuke/widgets/insta_list.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(child: InstaList()),
      ],
    );
  }
}