import 'package:flutter/material.dart';
import 'package:insta_clone/components/touchable_opacity.dart';
import 'package:insta_clone/constants/font.dart';

class FollowButton extends StatefulWidget{
  const FollowButton({super.key});

  @override
  State<FollowButton> createState() {
    return _FollowButton();
  }
}

class _FollowButton extends State<FollowButton>{
  bool follow = false;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacityWidget(child:
        Container(
          width: 55,
          height: 30,
          decoration: BoxDecoration(
            color: !follow? Colors.blue : Colors.blueGrey.shade800,
            borderRadius: BorderRadius.circular(8)
          ),
         child: Center(child: follow? Text("팔로잉",style: lSmallText,) : Text("팔로우",style: lSmallText,))
        )
        , onPress: (){setState(() {
      follow = !follow;
    });});
  }
}