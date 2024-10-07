import 'package:flutter/material.dart';
import 'package:insta_clone/constants/font.dart';

class DmMemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/icon.jpg",),),
        Text("내 메모", style: lSmallText,)
      ],
    );
  }
}