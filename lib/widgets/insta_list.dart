import 'package:flutter/material.dart';
import 'package:instatuke/widgets/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class InstaList extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    bool isPressed = false;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? new SizedBox(
                child: new InstaStories(),
                height: deviceSize.height * 0.15,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: (EdgeInsets.fromLTRB(16, 16, 8, 16)),
                    child:
                    // FIRST ROW
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage("assets/images/luqman.jpg"),
                                  )),
                            ),
                             new SizedBox(
                          width: 10.0,
                        ),
                        new Text(
                          "Luqman Tuke",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                          ],
                        ),
                        new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                        )
                        ],
                    ),

                  ),
                  // Second Row
                  Flexible(
                  fit: FlexFit.loose,
                  child: Image.asset("assets/images/luqman.jpg",fit: BoxFit.cover,)
                    
                  ),
               
                  
                ],
              ));
  }
}
