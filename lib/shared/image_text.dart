import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiteforest_website/provider/conf_provider.dart';

class ImageText extends ConsumerStatefulWidget {
  final String assetImage;
  final String text;

  const ImageText(this.assetImage, {required this.text, Key? key})
      : super(key: key);

  @override
  ConsumerState<ImageText> createState() => _ImageTextState();
}

class _ImageTextState extends ConsumerState<ImageText> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = ref.watch(confProvider).screenSize;
    return Container(
        color: Colors.black,
        child: InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: Stack(children: [
            Opacity(
              opacity: isHover ? 0.5 : 1,
              child: Image.asset(
                widget.assetImage,
                width: screenSize.width / 4,
              ),
            ),
            if (isHover) ...{
              Positioned.fill(
                  child: Align(
                alignment: Alignment.center,
                child: Text(
                  widget.text.toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 32),
                ),
              ))
            }
          ]),
        ));
  }
}
