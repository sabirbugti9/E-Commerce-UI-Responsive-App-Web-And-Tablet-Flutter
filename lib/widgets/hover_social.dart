import 'package:flutter/material.dart';

class HoverSocial extends StatefulWidget {
  final void Function()? onTap;
  final String image;
  const HoverSocial({
    Key? key,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  @override
  _HoverSocialState createState() => _HoverSocialState();
}

class _HoverSocialState extends State<HoverSocial> {
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
    return Colors.grey;
  }

  @override
  Widget build(BuildContext  context) {
    return MouseRegion(
      onEnter: _incrementEnter,
      cursor: SystemMouseCursors.click,
      onExit: _incrementExit,
      child: Image(
        color: setColor(),
        image: AssetImage("assets/${widget.image}"),
      ),
    );
  }
}
