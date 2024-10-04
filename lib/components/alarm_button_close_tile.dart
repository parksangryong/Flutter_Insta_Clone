import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      leading: const CircleAvatar(backgroundImage: AssetImage("assets/rabbit.jpeg"),),
      title: const Text("NickName"),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Name"),
          Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage("assets/bird.png"),
              ),
              Flexible(
                  child: Text("---- 님, ----- 님 외 13명이 팔로우합니다."))
            ],
          )
        ],
      ),
      trailing: SizedBox(
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("btn")),
            const FaIcon(FontAwesomeIcons.x)
          ],
        ),
      ),
    );
  }
}