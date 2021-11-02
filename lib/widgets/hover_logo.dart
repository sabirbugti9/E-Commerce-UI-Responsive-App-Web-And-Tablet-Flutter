import 'package:flutter/material.dart';

class HoverLogo extends StatefulWidget {
  final void Function()? onTap;
  const HoverLogo({Key? key, required this.onTap}) : super(key: key);

  @override
  _HoverLogoState createState() => _HoverLogoState();
}

class _HoverLogoState extends State<HoverLogo> {
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
      child: SizedBox(
        width: 40,
        child: Row(
          children: [
            Image(
              height: 50,
              width: 40,
              color: setColor(),
              image: const AssetImage("assets/logo.png"),
            ),
            const SizedBox(
              width: 24.0,
            ),
            Text(
              "E-Shop",
              style: TextStyle(
                fontSize: 18,
                color: setColor(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
