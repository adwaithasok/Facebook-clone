import 'package:flutter/material.dart';

class Circularbutton extends StatelessWidget {
  final IconData buttonIcon;
  final Color buttoncolor;
  final void Function() buttonAction;
  // final Void Function() buttonAction;
  // ignore: use_key_in_widget_constructors
  const Circularbutton({
    required this.buttonIcon,
    required this.buttonAction,
    this.buttoncolor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: IconButton(
          icon: Icon(
            buttonIcon,
            color: buttoncolor,
            size: 25,
          ),
          onPressed: buttonAction),
    );
  }
}

class Void {}
