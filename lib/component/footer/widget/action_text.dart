import 'package:flutter/material.dart';

class ActionText extends StatefulWidget {
  final String text;
  final Function onTap;

  const ActionText(this.text, {required this.onTap, Key? key})
      : super(key: key);

  @override
  State<ActionText> createState() => _ActionTextState();
}

class _ActionTextState extends State<ActionText> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          decoration: isHover ? TextDecoration.underline : null,
        ),
      ),
    );
  }
}
