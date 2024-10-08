import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(children: [
              Positioned.fill(
                  child: Image.asset(
                "assets/bird.png",
                fit: BoxFit.cover,
              )),
              Text("Top"),
            ]),
          ),
          Row(
            children: [
              Expanded(child: TextField()),
              IconButton(
                  onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.heart)),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.paperPlane)),
            ],
          ),
        ],
      )),
    );
  }
}
