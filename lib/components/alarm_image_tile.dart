import 'package:flutter/material.dart';
import 'package:insta_clone/constants/font.dart';

class AlarmImageTile extends StatelessWidget{
  const AlarmImageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: ListTile(
          leading: const CircleAvatar(radius: 24,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/image.jpg"),
          ),
          title: Text("XXX 님과 YYY 님이 회원님의 게시물을 좋아합니다.", style: lMediumText),
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(8), // 모서리를 둥글게 설정
            child: Image.asset(
              "assets/back.jpeg",
              width: 45, // 원하는 크기 설정
              height: 45, // 원하는 크기 설정
              fit: BoxFit.cover, // 이미지를 박스에 맞추기
            ),
          ),),
    );
  }
}