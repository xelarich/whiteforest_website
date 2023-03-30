import 'package:flutter/material.dart';

class FooterNavigationButton extends StatefulWidget {
  final String text;

  const FooterNavigationButton(this.text, {Key? key}) : super(key: key);

  @override
  State<FooterNavigationButton> createState() => _FooterNavigationButtonState();
}

class _FooterNavigationButtonState extends State<FooterNavigationButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8 ,horizontal: 8),
      child: InkWell(
        onTap: () {
          setState(() {
            debugPrint(widget.text);
          });
        },
        child: Text(
          widget.text,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontFamily: 'Roboto'),
        ),
      ),
    );
  }
}
