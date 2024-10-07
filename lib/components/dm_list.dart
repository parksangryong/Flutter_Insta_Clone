import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/components/follow_button.dart';
import 'package:insta_clone/components/touchable_opacity.dart';
import 'package:insta_clone/constants/font.dart';

class DmList extends StatefulWidget{
  const DmList({super.key});

  @override
  State<DmList> createState() {
    return _DmList();
  }
}

class _DmList extends State<DmList>{
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(radius: 24,backgroundImage: AssetImage("assets/rabbit.jpeg",),),
      title:  Text("NickName" , style: lMediumText),
      subtitle:  Text("19분전에 보냄" , style: lMediumText.copyWith(color: Colors.white70)),
      trailing: const Icon(Icons.camera_alt_outlined)

    );
  }
}