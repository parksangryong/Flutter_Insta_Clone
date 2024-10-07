import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/components/follow_button.dart';
import 'package:insta_clone/components/touchable_opacity.dart';
import 'package:insta_clone/constants/font.dart';

class AlarmButtonCloseTile extends StatefulWidget{
  const AlarmButtonCloseTile({super.key});

  @override
  State<AlarmButtonCloseTile> createState() {
    return _AlarmButtonCloseTile();
  }
}

class _AlarmButtonCloseTile extends State<AlarmButtonCloseTile>{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(radius: 24,backgroundImage: AssetImage("assets/rabbit.jpeg",),),
      title:  Text("NickName" , style: lFeedContentText.copyWith(fontSize: 12)),
      subtitle:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name", style: lFeedMiniText.copyWith(fontSize: 10),),
          Row(
            children: [
              const CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage("assets/bird.png"),
              ),
              const SizedBox(width: 5,),
              Flexible(
                  child: Text("FireBird 님, IceBird 님 외 13명이 팔로우합니다.", style: lFeedMiniText.copyWith(fontSize: 9)))
            ],
          )
        ],
      ),
      trailing: SizedBox(
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const FollowButton(),
            const SizedBox(width: 15,),
            TouchableOpacityWidget(child: const FaIcon(FontAwesomeIcons.x, size: 10,), onPress: (){})
          ],
        ),
      ),
    );
  }
}