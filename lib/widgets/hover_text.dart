import 'package:flutter/material.dart';

class HoverText extends StatefulWidget {
  final void Function()? onTap;
  final String text;
  final Color colorWithoutHover;
  const HoverText(
      {Key? key,
      required this.onTap,
      required this.text,
      required this.colorWithoutHover})
      : super(key: key);

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool _favorite = false;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _favorite = true;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _favorite = false;
    });
  }

  Color setColor() {
    if (_favorite) {
      return Colors.green;
    }
    return widget.colorWithoutHover;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _incrementEnter,
      cursor: SystemMouseCursors.click,
      onExit: _incrementExit,
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 18,
          color: setColor(),
        ),
      ),
    );
  }
}
