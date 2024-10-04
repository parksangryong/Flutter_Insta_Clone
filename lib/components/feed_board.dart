import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/components/touchable_opacity.dart';

import '../constants/font.dart';

class FeedBoard extends StatefulWidget {
  const FeedBoard({super.key});

  @override
  State<FeedBoard> createState() {
    return _FeedBoard();
  }
}

class _FeedBoard extends State<FeedBoard> {
  bool heartCheck = false;
  bool bookmarkCheck = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      color: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/image.jpg"),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text("OtherName", style: lFeedTitleText)
                  ],
                ),
                const FaIcon(FontAwesomeIcons.ellipsisVertical),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Image.asset("assets/back.jpeg"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TouchableOpacityWidget(
                        child: !heartCheck
                            ? const FaIcon(FontAwesomeIcons.heart)
                            : const FaIcon(FontAwesomeIcons.solidHeart,
                                color: Colors.red),
                        onPress: () {
                          setState(() {
                            heartCheck = !heartCheck;
                          });
                        }),
                    heartCheck
                        ?  Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("1", style: lFeedContentText),
                          )
                        : const SizedBox.shrink(),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        child: const FaIcon(FontAwesomeIcons.comment),
                        onTap: () {}),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                        child: const FaIcon(FontAwesomeIcons.paperPlane),
                        onTap: () {}),
                  ],
                ),
                TouchableOpacityWidget(
                    child: !bookmarkCheck
                        ? const FaIcon(FontAwesomeIcons.bookmark)
                        : const FaIcon(
                            FontAwesomeIcons.solidBookmark,
                          ),
                    onPress: () {
                      setState(() {
                        bookmarkCheck = !bookmarkCheck;
                      });
                    }),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Text("Content, this is cute tiger.", style: lFeedContentText),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 5),
            child: Text("댓글 모두 보기",  style: lFeedMiniText),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 13,
                  backgroundImage: AssetImage("assets/icon.jpg"),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text("댓글 추가...",  style: lFeedMiniText)
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 8, top: 5),
            child: Text("2일전",  style: lFeedMiniText),
          ),
        ],
      ),
    );
  }
}
