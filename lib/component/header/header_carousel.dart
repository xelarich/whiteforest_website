import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/header/header_animated_icon.dart';

class HeaderCarousel extends StatefulWidget {
  @override
  _HeaderCarouselState createState() => _HeaderCarouselState();
}

class _HeaderCarouselState extends State<HeaderCarousel> {
  final String imagePath = 'assets/images/';

  late CarouselController _carouselController;

  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();
  }

  @override
  void dispose() {
    _carouselController.stopAutoPlay();
    super.dispose();
  }

  final List<String> images = [
    'assets/images/header/cover_summer.jpg',
    'assets/images/header/cover_winter.jpg'
  ];

  List<Widget> generateImageTiles(Size screenSize) {
    return images
        .map(
          (element) =>
          SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: Image.asset(
              element,
              fit: BoxFit.fill,
            ),
          ),
    )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            enlargeCenterPage: false,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 1),
            autoPlayInterval: const Duration(seconds: 5),
            scrollPhysics: const NeverScrollableScrollPhysics(),
          ),
          carouselController: _carouselController,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide.none,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(16)),
                    onPressed: () => _carouselController.previousPage(),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white70,
                      size: 48,
                    ),
                  ),
                  Flexible(
                      child: Text(
                        "Préparez-vous \npour l'aventure".toUpperCase(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 96),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      )),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide.none,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(16)),
                    onPressed: () => _carouselController.nextPage(),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white70,
                      size: 48,
                    ),
                  ),
                ],
              ),
              const HeaderAnimatedIcon(
                Icons.arrow_downward,
                color: Colors.black,
                size: 96,
              )
            ],
          ),
        ),
      ],
    );
  }
}
