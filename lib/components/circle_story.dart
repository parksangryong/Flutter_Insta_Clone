import 'package:flutter/material.dart';
import 'package:insta_clone/components/touchable_opacity.dart';

import '../constants/font.dart';

class CircleStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TouchableOpacityWidget(
      onPress: (){},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.yellow,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: const CircleAvatar(
                radius: 37.5,
                backgroundImage: AssetImage("assets/image.jpg"),
              ),
            ),
          ),
           Text(
            "otherName",
            style: lStoryNameText,
          )
        ],
      ),
    );
  }
}
