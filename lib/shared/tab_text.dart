import 'package:flutter/material.dart';

class TabText extends StatefulWidget {
  TabText(this.text, {this.focusNode, required this.onHover, Key? key})
      : super(key: key);
  final String text;
  FocusNode? focusNode;
  Function onHover;

  @override
  State<TabText> createState() => _TabTextState();
}

class _TabTextState extends State<TabText> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        widget.onHover();
        setState(() {
          isHover = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text.toUpperCase(),
              style: TextStyle(
                fontSize: 16,
                color: isHover ? Colors.black : Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              visible: isHover,
              child: Container(
                height: 2,
                width: 100,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
