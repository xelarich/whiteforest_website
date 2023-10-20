import 'package:flutter/material.dart';

class ActionText extends StatefulWidget {
  final String text;
  final Function onTap;
  final Color color;
  final double size;
  final String fontFamily;
  final FontWeight fontWeight;

  const ActionText(this.text,
      {required this.onTap,
      this.color = Colors.black,
      this.size = 14,
      this.fontFamily = 'Roboto',
      this.fontWeight = FontWeight.normal,
      super.key});

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
      hoverColor: Colors.transparent,
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.color,
          fontSize: widget.size,
          fontFamily: widget.fontFamily,
          fontWeight: FontWeight.bold,
          decoration: isHover ? TextDecoration.underline : null,
        ),
      ),
    );
  }
}
