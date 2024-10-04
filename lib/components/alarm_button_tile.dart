import 'package:flutter/material.dart';
import 'package:insta_clone/components/follow_button.dart';

class AlarmButtonTile extends StatefulWidget{
  const AlarmButtonTile({super.key});

  @override
  State<AlarmButtonTile> createState() {
    return _AlarmButtonTile();
  }
}

class _AlarmButtonTile extends State<AlarmButtonTile>{
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading:  CircleAvatar( backgroundImage: AssetImage("assets/cat.jpeg"),),
      title:  Text("회원님이 알 수도 있는 xxx님이 Instagram을 사용중입니다."),
      trailing: FollowButton()
    );
  }
}