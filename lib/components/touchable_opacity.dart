import 'package:flutter/material.dart';

class TouchableOpacityWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback onPress;

  const TouchableOpacityWidget({Key? key, required this.child, required this.onPress}) : super(key: key);

  @override
  _TouchableOpacityWidgetState createState() => _TouchableOpacityWidgetState();
}

class _TouchableOpacityWidgetState extends State<TouchableOpacityWidget> {
  double _opacity = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _opacity = 0.5; // 터치할 때 투명도 낮추기
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _opacity = 1.0; // 터치에서 손을 떼면 다시 원래 투명도로
    });
  }

  void _onTapCancel() {
    setState(() {
      _opacity = 1.0; // 터치가 취소되었을 때도 원래 투명도로
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: _opacity,
        child: widget.child,
      ),
    );
  }
}