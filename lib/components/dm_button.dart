import 'package:flutter/material.dart';
import 'package:insta_clone/constants/font.dart';

class DmButton extends StatefulWidget {
  late String title;
  late  bool selected;

   DmButton({super.key, required this.title, required this.selected});

  @override
  State<DmButton> createState() {
    return _DmButton();
  }
}

class _DmButton extends State<DmButton> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.selected = !widget.selected;
          });
        },
        child: Container(
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: widget.selected ? Colors.white: Colors.grey.shade800
          ),
          child: Center(
            child: Text(
              widget.title,
              style: widget.selected ? lSmallText.copyWith(fontSize: 12, color: Colors.black) : lSmallText.copyWith(fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
