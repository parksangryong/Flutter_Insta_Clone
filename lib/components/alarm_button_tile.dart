import 'package:flutter/material.dart';

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
    return ListTile(
      leading: const CircleAvatar( backgroundImage: AssetImage("assets/cat.jpeg"),),
      title: const Text("회원님이 알 수도 있는 xxx님이 Instagram을 사용중입니다."),
      trailing: ElevatedButton(
          onPressed: () {}, child: const Text("btn")),
    );
  }
}