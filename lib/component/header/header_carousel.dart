import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/component/header/header_image.dart';
import 'package:whiteforest_website/shared/utils.dart';

class HeaderCarousel extends StatefulWidget {
  const HeaderCarousel({super.key});

  @override
  State<HeaderCarousel> createState() => _HeaderCarouselState();
}

class _HeaderCarouselState extends State<HeaderCarousel> {
  final CarouselController _controller = CarouselController();

  final List<Widget> images = [
    const HeaderImage('assets/images/header/header_winter.webp'),
    const HeaderImage('assets/images/header/header_summer.webp'),
  ];

  var imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height - kToolbarHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: CarouselSlider(
                items: [
                  HeaderImage(
                    'assets/images/header/${getPathImage(context)}header_winter.webp',
                  ),
                  HeaderImage(
                    'assets/images/header/${getPathImage(context)}header_summer.webp',
                  ),
                ],
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 10),
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  viewportFraction: 1,
                  height: screenSize.height,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index, _) {
                    setState(() {
                      imageIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          const Positioned.fill(
            child: Center(
              child: Text(
                "Préparez-vous pour l'aventure",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned.fill(
            top: screenSize.height * 0.75,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      _controller.animateToPage(index);
                    },
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 4.0,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                            .withOpacity(imageIndex == index ? 0.9 : 0.4),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
