import 'package:flutter/material.dart';
import 'package:insta_clone/components/touchable_opacity.dart';

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
          decoration: BoxDecoration(),
         child: follow ? Text("팔로잉") : Text("팔로우")
        )
        , onPress: (){setState(() {
      follow = !follow;
    });});
  }
}