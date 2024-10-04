import 'package:flutter/material.dart';
import 'package:insta_clone/components/circle_add_story.dart';
import 'package:insta_clone/components/circle_story.dart';
import 'package:insta_clone/components/feed_board.dart';

class HomeScreen extends StatelessWidget {
  late int circleNumber;
  late int boardNumber;

  HomeScreen(
      {super.key, required this.circleNumber, required this.boardNumber});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                const CircleAddStory(),
                Row(
                  children:
                      List.generate(circleNumber, (index) => CircleStory()),
                )
              ]),
            ),
          ),
          Column(
            children: List.generate(boardNumber, (index) {
              return const FeedBoard();
            }),
          )
        ],
      ),
    );
  }
}
