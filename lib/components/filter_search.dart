import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/components/touchable_opacity.dart';
import 'package:insta_clone/constants/font.dart';

class FilterSearch extends StatefulWidget {
  @override
  State<FilterSearch> createState() {
    return _FilterSearch();
  }
}

class _FilterSearch extends State<FilterSearch> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TouchableOpacityWidget(
          onPress: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 15,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "검색",
                  style: lMediumText.copyWith(fontSize: 14),
                )
              ],
            ),
          ),
        )),
        const SizedBox(
          width: 16,
        ),
        TouchableOpacityWidget(
            child: Text(
              "필터",
              style: lMediumText.copyWith(color: Colors.blue),
            ),
            onPress: () {})
      ],
    );
  }
}
