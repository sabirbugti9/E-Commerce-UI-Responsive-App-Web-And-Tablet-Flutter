import 'package:flutter/material.dart';

class HoverIcon extends StatefulWidget {
  final void Function()? onTap;
  final Icon icon;
  const HoverIcon({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  _HoverIconState createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
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
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _incrementEnter,
      cursor: SystemMouseCursors.click,
      onExit: _incrementExit,
      child: IconButton(
        icon: widget.icon,
        color: setColor(),
        onPressed: widget.onTap,
      ),
    );
  }
}
