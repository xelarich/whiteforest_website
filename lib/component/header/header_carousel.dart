import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:whiteforest_website/component/header/header_image.dart';

class HeaderCarousel extends StatefulWidget {
  const HeaderCarousel({super.key});

  @override
  HeaderCarouselState createState() => HeaderCarouselState();
}

class HeaderCarouselState extends State<HeaderCarousel> {
  late InfiniteScrollController _controller;

  final List<Widget> images = [
    const HeaderImage('assets/images/header/cover_winter.jpg'),
    const HeaderImage('assets/images/header/cover_summer.jpg'),
  ];

  int imageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: 0);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height - kTextTabBarHeight - 50,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: InfiniteCarousel.builder(
                itemCount: images.length,
                itemExtent: screenSize.width,
                controller: _controller,
                center: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, itemIndex, realIndex) {
                  return images[itemIndex];
                },
                onIndexChanged: (value) {
                  setState(() {
                    imageIndex = value;
                  });
                },
              ),
            ),
          ),
          const Positioned.fill(
            child: Center(
              child: Text(
                "Préparez-vous pour l'aventure",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 64,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned.fill(
            top: screenSize.height * 0.75,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.asMap().entries.map((entry) {
                  return InkWell(
                    onTap: () => _controller.animateToItem(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              (Theme.of(context).brightness == Brightness.dark
                                      ? Colors.white
                                      : Colors.white)
                                  .withOpacity(
                                      imageIndex == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
