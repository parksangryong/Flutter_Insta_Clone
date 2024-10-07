import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        body: SingleChildScrollView());
  }
}
