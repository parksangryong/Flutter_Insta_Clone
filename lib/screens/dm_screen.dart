import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/components/dm_button.dart';
import 'package:insta_clone/components/dm_list.dart';
import 'package:insta_clone/components/dm_memo.dart';
import 'package:insta_clone/components/filter_search.dart';

import '../components/touchable_opacity.dart';
import '../constants/font.dart';

class DmScreen extends StatelessWidget {
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
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("MyName", style: lLargeText.copyWith(fontSize: 20)),
              const SizedBox(
                width: 10,
              ),
              const FaIcon(
                FontAwesomeIcons.chevronDown,
                size: 10,
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.bars)),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.arrowTrendUp)),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.penToSquare)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: FilterSearch(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: DmMemo(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DmButton(
                      title: "주요",
                      selected: true,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    DmButton(
                      title: "응답",
                      selected: false,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    DmButton(
                      title: "채널",
                      selected: false,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    DmButton(
                      title: "요청",
                      selected: false,
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(20, (index) {
                  return DmList();
                }),
              )
            ],
          ),
        ));
  }
}
