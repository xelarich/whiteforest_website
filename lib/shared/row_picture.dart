import 'package:flutter/material.dart';

class RowPicture extends StatefulWidget {
  final String assetImage;
  final int nbImagesInRow;

  const RowPicture(this.assetImage, {required this.nbImagesInRow, super.key});

  @override
  State<RowPicture> createState() => _RowPictureState();
}

class _RowPictureState extends State<RowPicture> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: Opacity(
          opacity: isHover ? 0.5 : 1,
          child: Image.asset(
            widget.assetImage,
            width: screenSize.width / widget.nbImagesInRow,
          ),
        ),
      ),
    );
  }
}
