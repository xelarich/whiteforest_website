import 'package:flutter/material.dart';

class LineContact extends StatelessWidget {
  const LineContact(
    this.title,
    this.text,
    this.icons, {
    required this.onPressed,
    super.key,
  });

  final String title;
  final String text;
  final IconData icons;

  final Future<void> Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icons, color: Colors.black),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  title.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: onPressed,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
