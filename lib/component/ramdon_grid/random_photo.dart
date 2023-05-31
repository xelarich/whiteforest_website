import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class RandomPhotoGrid extends StatefulWidget {
  const RandomPhotoGrid({super.key});

  @override
  RandomPhotoGridState createState() => RandomPhotoGridState();
}

class RandomPhotoGridState extends State<RandomPhotoGrid> {
  final List<String> _photoUrls = [
    'assets/images/img1.jpeg',
    'assets/images/img2.jpeg',
    'assets/images/img3.jpeg',
  ];
  final List<bool> _visible = List.filled(3, true);

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        int randomIndex = Random().nextInt(2);
        _visible[randomIndex] = !_visible[randomIndex];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _photoUrls[0],
      fit: BoxFit.cover,
    );
/*
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: Grid(),
      itemBuilder: (context, index) {
        return AnimatedOpacity(
          opacity: _visible[index] ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            _photoUrls[index],
            fit: BoxFit.cover,
          ),
        );
      },
      itemCount: 10,
    );
*/
  }
}
