import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  final String imagePath;

  const HeaderImage(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.grey.withOpacity(0.7),
              BlendMode.darken,
            )),
      ),
    );
  }
}
