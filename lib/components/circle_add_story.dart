import 'package:flutter/material.dart';
import 'package:insta_clone/components/touchable_opacity.dart';

import '../constants/font.dart';

class CircleAddStory extends StatelessWidget{
  const CircleAddStory({super.key});

  @override
  Widget build(BuildContext context) {
    return TouchableOpacityWidget(
      onPress: (){},
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/icon.jpg"),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black, // 테두리 색상
                    width: 3, // 테두리 두께
                  ),
                ),
                width: 30,
                height: 30,
                child: const Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )),
              ),
            ],
          ),
           Text("MyName", style: lMediumText)
        ],
      ),
    );
  }
}