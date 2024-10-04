import 'package:flutter/material.dart';

class AlarmImageTile extends StatelessWidget{
  const AlarmImageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
        title: Text("XXX 님과 YYY 님이 회원님의 게시물을 좋아합니다."),
        trailing: Image.asset("assets/back.jpeg"));
  }
}