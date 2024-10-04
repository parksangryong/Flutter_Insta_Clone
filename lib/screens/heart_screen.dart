import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/components/alarm_button_close_tile.dart';
import 'package:insta_clone/components/alarm_image_tile.dart';
import 'package:insta_clone/components/touchable_opacity.dart';
import 'package:insta_clone/constants/font.dart';

import '../components/alarm_button_tile.dart';

class HeartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Center(
            child: TouchableOpacityWidget(
                onPress: () {
                  Navigator.pop(context);
                },
                child: const FaIcon(FontAwesomeIcons.arrowLeftLong)),
          ),
          title: Text("알림", style: lFeedTitleText.copyWith(fontSize: 22)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("최근 7일",
                      textAlign: TextAlign.start,
                      style: lFeedContentText.copyWith(fontSize: 15)),
                ),
                Column(
                    children: List.generate(10, (index) {
                  return AlarmImageTile();
                })),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("알수도 있는 사람",
                      textAlign: TextAlign.start,
                      style: lFeedContentText.copyWith(fontSize: 15)),
                ),
                Column(
                    children: List.generate(10, (index) {
                  return AlarmButtonTile();
                })),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("회원님을 위한 추천",
                      textAlign: TextAlign.start,
                      style: lFeedContentText.copyWith(fontSize: 15)),
                ),
                Column(
                    children: List.generate(10, (index) {
                  return AlarmButtonCloseTile();
                })),
              ],
            ),
          ),
        ));
  }
}
